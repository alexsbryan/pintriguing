Pintriguing.Routers.AppRouter = Backbone.Router.extend({
  initialize: function (options) {
    this.collection =  options.collection,
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "home",
    "users/:id/boards/:id": "boardShow"
  },

  home: function () {
    var rootIndexView = new Pintriguing.Views.HomeView({
      collection: this.collection
    })
    this._swapView(rootIndexView)
  },

  boardShow: function (userId, boardId) {
    var that = this

    var board = new Pintriguing.Models.Board({
      id: boardId
    })

    board.fetch({
      success: function (b) {
        var boardShowView = new Pintriguing.Views.BoardShow({
          model: b
        })
        that._swapView(boardShowView)
      }
    })

  },

  _swapView: function (view) {
    if(this.currentView){
      this.currentView.remove()
    }
    this.currentView = view
    this.$rootEl.html(view.render().$el)
  }

});
