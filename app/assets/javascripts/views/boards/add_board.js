Pintriguing.Views.AddBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boards = options.boards
  },

  template: JST['boards/addBoard'],

  events: {
    "submit .new-board": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    var $formData = $(event.currentTarget).serializeJSON();
    //try a navigate on success callback
    b = this.boards.create($formData, {
      success: function(b) {
        if($('.new-pin-it').length >0){
          $('.new-board').remove()
        }else {
          $("a.cancel").last().click()
          var routeString = "users/" + current_user.escape('id') + "/boards/" + b.escape('id')
          app.navigate(routeString,{trigger:true})
          // Pintriguing.Routers.AppRouter.navigate(routeString, true)
        }
      }
    })

    if($('.new-pin-it').length >0){
      $('.new-board').remove()
    }else {
      $("a.cancel").last().click()
    }
    //
 //
 //     var routeString = "users/" + current_user.escape('id') + "/boards/" + b.escape('id')

    current_user.boards().fetch()

  },

  render: function () {
    var renderedContent = this.template({
      categories: categories
    })
    this.$el.html(renderedContent)
    return this
  }

});
