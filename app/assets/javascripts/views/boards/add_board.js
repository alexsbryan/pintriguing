Pintriguing.Views.AddBoard = Backbone.View.extend({

  template: JST['boards/addBoard'],

  render: function () {
    var renderedContent = this.template({
    })
    this.$el.html(renderedContent)
    return this
  }

});
