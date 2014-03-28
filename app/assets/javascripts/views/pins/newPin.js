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
    this.model.set({title: $formData['pin_on_board']['title'], board_id: parseInt($formData['pin_on_board']['board_id']), description: $formData['pin']['description']})
    this.model.save({}, {
      success: function (p) {
        //Terrible, sorry
        var routeString = "users/" + current_user.escape('id') + "/boards/" + p.escape('board_id')
        var terribleRoute = "categories/1"
        app.navigate(terribleRoute, {trigger:true})
        app.navigate(routeString,{trigger:true})
      }
    })


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
