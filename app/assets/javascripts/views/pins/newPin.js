Pintriguing.Views.NewPin = Backbone.View.extend({

  initialize: function (options) {

    this.boardNames = options.boardNames;
    this.pin = options.pin;
  },

  template: JST['pins_on_boards/newPin'],

  events: {
    "submit .new-pin-it": "submit"
  },

  submit: function (event) {
    event.preventDefault()
    var $formData = $(event.currentTarget).serializeJSON()
    debugger
    this.model.set({title: $formData['pin_on_board']['title'], board_id: parseInt($formData['pin_on_board']['board_id'])})
    this.model.save()

    debugger

    //pins.create($formData)



     $("a.cancel").last().click()


  },

  render: function () {
    var renderedContent = this.template({
      boards: current_user.boards(),
      pin: this.model
    })
    this.$el.html(renderedContent)
    return this
  }

});
