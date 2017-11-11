(function() {
  const defaults = {
    i18n: {
      locale: 'ru-RU'
    }
  };

  $(document).on('turbolinks:load', event => {
    switch (true) {
      case event.target.URL.includes('problem_requests'):
        $.get(`/questionnares/${$('.quest').data('id')}`)
          .then(
            res => {
              console.log(res);

              const formBuilder = $('.quest').formBuilder(
                Object.assign(
                  {},
                  {
                    showActionButtons: false
                  },
                  defaults
                )
              );

              formBuilder.promise.then(() => {
                formBuilder.actions.setData(JSON.stringify(res));
              });
            },
            err => {
              console.log(err);
            }
          );

        break;

      case event.target.URL.includes('questionnares/new'):
        const formBuilder = $('.quest-create').formBuilder(defaults);
        
        $('.quest-create').on('click', '.save-template', () => {
          var questForm = $('#quest-form').serializeArray().reduce(function(obj, item) {
            obj[item.name] = item.value;
            return obj;
          }, {});
          $.post('/questionnares', {
            title: questForm.title,
            description: questForm.description, 
            formData: formBuilder.actions.getData('json')
          });
        });

        break;

      default:
    }
  });
})();
