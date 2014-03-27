Pintriguing.Views.NewPinOnBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames;
    this.pin = options.pin;
    this.modal = options.modal;
    this.listenTo(current_user.boards(),"add", this.render)
  },

  template: JST['pins_on_boards/newPinOnBoard'],

  events: {
    "submit .new-pin-it": "submit",
    "click #addBoard": "addBoard"
  },

    addBoard: function (event) {
      var cuser = $('#content').attr('data-cuser-id');
      var newBoardView = new Pintriguing.Views.AddBoard({
        user: cuser,
        boards: current_user.boards()
      });

      this.$el.append(newBoardView.render().$el)
      // var modal = new Backbone.BootstrapModal({
 //        content: newBoardView
 //      }).open();
  },

  submit: function (event) {
    event.preventDefault();
    var $formData = $(event.currentTarget).serializeJSON();
    pins.create($formData)

     $("a.cancel").last().click()
  },

  render: function () {

    if($("a.cancel").length>0){
      $("a.cancel").first().click()
    }

    var renderedContent = this.template({
      boards: current_user.boards(),
      pin: this.pin
    })
    this.$el.html(renderedContent)
    return this
  }

});
