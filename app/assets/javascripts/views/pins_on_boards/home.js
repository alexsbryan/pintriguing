Pintriguing.Views.HomeView = Backbone.View.extend({

  template: JST['pins_on_boards/home'],

  render: function () {
    var renderedContent = this.template({
      pins_on_boards: this.collection
    })

    this.$el.html(renderedContent)
    return this
  }

});
