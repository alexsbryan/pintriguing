Pintriguing.Views.HomeView = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames,
    this.listenTo(this.collection, "sync", this.render)
  },

  events: {
    "click #pin-it": "pin"
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
  },

  pin: function (event) {
    var pin = $(event.currentTarget).attr('data-pinid');
    var newPOBView = new Pintriguing.Views.NewPinOnBoard({
      boardNames: this.boardNames,
      pin: pin
    });

      debugger

    var modal = new Backbone.BootstrapModal({
      content: newPOBView,
      title: "Pin it!"
    }).open();
    //Demo of how to get modal to work
    // var addBoardView = new Pintriguing.Views.AddBoard();
 //    var modal = new Backbone.BootstrapModal({ content: addBoardView}).open();

  }

});
