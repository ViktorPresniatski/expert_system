class ProblemRequestsController < ApplicationController
  before_action :authenticate_user!, only: [:add_response]

  def index
    @problem_requests = ProblemRequest.all
  end

  def show
    @problem_request = ProblemRequest.find(params[:id])
  end

  def add_response
    @problem_request = ProblemRequest.find(params[:problem_request_id])
    @expert_response = @problem_request.add_response(expert_response_params, current_user)
    if @expert_response.valid?
      redirect_to @problem_request
    else
      render 'expert_responses/show'
    end
  end

  private

  def expert_response_params
    params.require('expert_response').permit('response_text')
  end
end
