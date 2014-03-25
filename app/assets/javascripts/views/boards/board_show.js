Pintriguing.Views.BoardShow = Backbone.View.extend({

  initialize: function () {
    this.listenTo(this.model.pins_on_boards(), "sync add", this.render);
    this.listenToScrolls();
  },


  template: JST['boards/show'],


  events: {
    "click #pin-it": "pin"
  },

  pin: function (event) {
    var pin = $(event.currentTarget).attr('data-pinid');
     var newPOBView = new Pintriguing.Views.NewPinOnBoard({
       boardNames: this.boardNames,
       pin: pin
     });


     var modal = new Backbone.BootstrapModal({
       content: newPOBView
     }).open();


  },

  render: function () {

    var scrollTop = $(window).scrollTop()

    var renderedContent = this.template({
      pins_on_boards: this.model.pins_on_boards(),
      board: this.model
    })

    this.$el.html(renderedContent)
    window.scrollTo(0,scrollTop)
    return this
  },



  listenToScrolls: function () {
    $(window).off('scroll');
    var callback = _.throttle(this.nextPage, 200);
    $(window).on('scroll', callback.bind(this));
  },

  nextPage: function () {
    //determine where we are and if it's cool to get more Don 'the Predator' Frye
    //images
    //figure out which page of Don 'the Predator' Frye images we need
    if ($(window).scrollTop() > ($(document).height() - $(window).height() - 50)) {
      if (this.model.page < this.model.total_pages) {
        this.model.fetch({
          data: { page: this.model.page + 1 },
          remove: false
        });
      }
    }
  },

});
