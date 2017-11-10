(function(w) {
  this.showSpinner = true;

  $(function() {
    $.get(`/questionnares/${$('.quest').data('id')}`)
      .then(
        res => {
          console.log(res);
        },
        err => {
          console.log(err);
        }
      )
      .always(() => {
        this.showSpinner = false;
      });
  });
})(window);
