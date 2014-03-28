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
    this.boards.create($formData)

    if($('.new-pin-it').length >0){
      $('.new-board').remove()
    }else {
      $("a.cancel").last().click()
    }
     // var routeString = "users/" + current_user.escape('id') + "/boards/" + b.escape('id')

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
