import React, { Component } from 'react';
import { Route } from 'react-router-dom';
import { Grid, Row, Col } from 'react-bootstrap';
import MDSpinner from "react-md-spinner";
import Auth from 'Auth';
import User from 'User';
import Api from 'Api';
import EditProfile from 'EditProfile';


class ProfilePage extends Component {
  constructor(props) {
    super(props);

    this.match = props.match;

    this.state = {
      profile: {
        firstName: '',
        lastName: '',
        age: 0,
        sex: '',
        userId: 0,
        avatar: ''
      },
      user: User.getUserInfo(),
      userCompanies: [],
      spinner: true
    };
  }

  componentDidMount() {
    Api.profileShow(this.state.user.id, Auth.getUserTokens())
    .then(data => {
      const profile = {
        ...data,
        userId: this.state.user.id
      };
      this.setState({ profile, spinner: false, userCompanies: data.companies });
    })
    .catch(error => {
      console.log(error);
    });
  }

  handleSubmit = (avatar) => {
    Api.profileUpdate(this.state.user.id, { avatar }, Auth.getUserTokens())
    .then(response => {
      alert('Data updated.');
    })
    .catch(error => {
      console.log(error);
    });
  };

  redirectToProfile() {
    this.props.history.push('/profile');
  };

  render() {
    return (
      <Grid>
        {this.state.spinner ? (
          <Row>
            <Col md={2} mdOffset={5}>
              <MDSpinner size={70} />
            </Col>
          </Row>
        ) : (
          <Row>
            <Col xs={12} md={8}>
              <Route
                exact
                path={`${this.match.url}/edit`}
                render={() => (
                  <EditProfile
                    profile={this.state.profile}
                    handleSubmit={this.handleSubmit}
                  />
                )}
              />
            </Col>
          </Row>
        )}
      </Grid>
    );
  }
}

export default ProfilePage;