Pintriguing.Views.PinShow = Backbone.View.extend({

  initialize: function (options) {

  },

  events: {
    "click img": "closeModal",
     "click #pin-it": "pin"
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
  },

  pin: function (event) {
    var pin = $(event.currentTarget).attr('data-pinid');
    var newPOBView = new Pintriguing.Views.NewPinOnBoard({
      boardNames: current_user.boards(),
      pin: pin
    });


    var modal = new Backbone.BootstrapModal({
      content: newPOBView
    }).open();

  }

});
