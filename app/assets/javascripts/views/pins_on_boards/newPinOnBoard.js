Pintriguing.Views.NewPinOnBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames,
    this.pin = options.pin,
    this.modal = options.modal
  },

  template: JST['pins_on_boards/newPinOnBoard'],

  events: {
    "submit .new-pin-it": "submit"
  },

  submit: function (event) {
    event.preventDefault();
    var $formData = $(event.currentTarget).serializeJSON();
    pins.create($formData)

     $("a.close")[0].click()
  },

  render: function () {
    var renderedContent = this.template({
      boards: this.boardNames,
      pin: this.pin
    })
    this.$el.html(renderedContent)
    return this
  }

});
