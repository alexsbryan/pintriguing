Pintriguing.Views.PinShow = Backbone.View.extend({

  initialize: function (options) {

  },

  events: {
    "click": "closeModal"
  },

  template: JST['pins_on_boards/showPin'],


  render: function () {
    var renderedContent = this.template({
      pob: this.model
    })
    this.$el.html(renderedContent)
    return this
  },

  closeModal: function () {
    $("a.cancel").last().click()
  }

});
