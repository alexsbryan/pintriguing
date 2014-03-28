Pintriguing.Views.NewPinOnBoard = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames;
    this.pin = options.pin;
    this.modal = options.modal;
    this.listenTo(current_user.boards(),"add sync", this.render)
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
    pins.create($formData, {
      success: function (pob) {
        var routeString = "users/" + current_user.escape('id') + "/boards/" + pob.escape('board_id')
        app.navigate(routeString ,{trigger:true})
        debugger
      }
    })

    $("a.cancel").last().click()
      $.each($("a.cancel"), function(idx, val){
         $($("a.cancel")[idx]).click()
      })
  },

  render: function () {

    var renderedContent = this.template({
      boards: current_user.boards(),
      pin: this.pin
    })

    this.$el.html(renderedContent)

    return this
  }

});
