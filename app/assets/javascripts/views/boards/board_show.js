Pintriguing.Views.BoardShow = Backbone.View.extend({


  template: JST['boards/show'],

  render: function () {
    var renderedContent = this.template({
      pins_on_boards: this.model.pins_on_boards(),
      board: this.model
    })

    this.$el.html(renderedContent)
    return this
  }

});
