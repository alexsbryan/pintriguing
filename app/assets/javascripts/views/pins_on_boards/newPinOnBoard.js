Pintriguing.Views.NewPinOnBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames,
    this.pin = options.pin
  },

  template: JST['pins_on_boards/newPin'],

  render: function () {
    var renderedContent = this.template({
      boards: this.boardNames,
      pin: this.pin
    })
    this.$el.html(renderedContent)
    return this
  }

});
