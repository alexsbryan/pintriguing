Pintriguing.Views.NewPin = Backbone.View.extend({

  initialize: function (options) {

    this.boardNames = options.boardNames;
    this.pin = options.pin;
		this.listenTo(current_user.boards(),"add sync", this.render)
  },

  template: JST['pins_on_boards/newPin'],

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
