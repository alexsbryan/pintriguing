Pintriguing.Views.CategoryShow = Backbone.View.extend({

  template: JST['categories/show'],

  render: function () {
    var renderedContent = this.template({
      pins_on_boards: this.model.pins_on_boards(),
      category: this.model
    })

    this.$el.html(renderedContent)
    return this
  }

});
