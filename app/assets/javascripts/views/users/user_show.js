Pintriguing.Views.UserShow = Backbone.View.extend({

  template: JST['users/show'],

  initialize: function () {
    this.listenTo(this.model.boards(), 'add sync', this.render);
  },

  events: {
    "click #addBoard": "addBoard"
  },

  render: function () {
    var renderedContent = this.template({
      boards: this.model.boards(),
      user: this.model
    })

    this.$el.html(renderedContent)
    return this
  },

  addBoard: function (event) {
    var cuser = $('#content').attr('data-cuser-id');
    var newBoardView = new Pintriguing.Views.AddBoard({
      user: cuser,
      boards: this.model.boards()
    });


    var modal = new Backbone.BootstrapModal({
      content: newBoardView
    }).open();
    //Demo of how to get modal to work
    // var addBoardView = new Pintriguing.Views.AddBoard();
 //    var modal = new Backbone.BootstrapModal({ content: addBoardView}).open();

  },

});
