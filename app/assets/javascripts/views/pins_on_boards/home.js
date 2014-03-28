Pintriguing.Views.HomeView = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames;
    this.listenTo(this.collection, "sync add", this.render);
    this.listenToScrolls();
  },

  events: {
    "click #pin-it": "pin",
    "click .pin img": "showPin"
  },

  template: JST['pins_on_boards/home'],

  render: function () {
    current_user.boards().fetch();
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
      boardNames: current_user.boards(),
      pin: pin
    });


    var modal = new Backbone.BootstrapModal({
      content: newPOBView
    }).open();

  },

  showPin: function (event) {
    var that = this
    var pobId = $(event.currentTarget).parent().parent().attr('data-pobid');
    var pob = pins.get(parseInt(pobId))

    var pinShowView = new Pintriguing.Views.PinShow({
      model: pob
    })
    var modal = new Backbone.BootstrapModal({
      content: pinShowView
    }).open();
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
      if (this.collection.page < this.collection.total_pages) {
        this.collection.fetch({
          data: { page: this.collection.page + 1 },
          remove: false
        });
      }
    }
  },

});

