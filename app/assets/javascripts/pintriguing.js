window.Pintriguing = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    pins = new Pintriguing.Collections.PinsOnBoards();
    current_user = new Pintriguing.Models.User({
      id: parseInt($(document).find('#content').attr('data-cuser-id'))
    })

    current_user.fetch({
      success: function (u) {
      }
    })

    categories = new Pintriguing.Collections.Categories();
    categories.fetch();

    var $rootEl = $('#content')

    pins.fetch({
      success: function (resp) {
        new Pintriguing.Routers.AppRouter({
          $rootEl: $rootEl,
          collection: pins,
          current_user: current_user
        });
        Backbone.history.start();
      }
    })
  }
};

$(document).ready(function(){
  Pintriguing.initialize();
});
