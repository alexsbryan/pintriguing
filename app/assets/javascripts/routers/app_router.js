Pintriguing.Routers.AppRouter = Backbone.Router.extend({
  initialize: function (options) {
    this.collection =  options.collection,
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "home",
    "categories/:id": "categoryShow",
    "users/:id/boards/:id": "boardShow",
    "users/:id": "userShow"
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

  categoryShow: function (catId) {
    var that = this

    var cat = new Pintriguing.Models.Category({
      id: catId
    })

    cat.fetch({
      success: function (c) {
        var categoryShowView = new Pintriguing.Views.CategoryShow({
          model: c
        })
        that._swapView(categoryShowView)
      }
    })

  },

  userShow: function (userId) {

    var that = this

    var user = new Pintriguing.Models.User({
      id: userId
    })

    user.fetch({
      success: function (u) {
        var boardShowView = new Pintriguing.Views.UserShow({
          model: u
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
