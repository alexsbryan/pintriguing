Pintriguing.Views.AddBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boards = options.boards
  },

  template: JST['boards/addBoard'],

  events: {
    "submit .new-board": "submit"
  },

  submit: function (event) {
    //event.preventDefault();
    var $formData = $(event.currentTarget).serializeJSON();
    debugger
    this.boards.create($formData)

     $("a.close")[0].click()
  },

  render: function () {
    var renderedContent = this.template({
      categories: categories
    })
    this.$el.html(renderedContent)
    return this
  }

});
