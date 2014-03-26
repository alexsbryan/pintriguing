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

      $("a.cancel").last().click()
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
