Pintriguing.Views.HomeView = Backbone.View.extend({

  initialize: function (options) {
    this.listenTo(this.collection, "sync", this.render)
  },

  template: JST['pins_on_boards/home'],

  render: function () {
    var scrollTop = $(window).scrollTop()

    var renderedContent = this.template({
      pins_on_boards: this.collection
    })

    this.$el.html(renderedContent)
    window.scrollTo(0,scrollTop)
    return this
  }

});
