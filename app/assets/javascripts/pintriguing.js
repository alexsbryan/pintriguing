window.Pintriguing = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    pins = new Pintriguing.Collections.PinsOnBoards();
    var $rootEl = $('#content')

    pins.fetch({
      success: function (resp) {
        new Pintriguing.Routers.AppRouter({
          $rootEl: $rootEl,
          collection: pins
        });
        Backbone.history.start();
      }
    })
  }
};

$(document).ready(function(){
  Pintriguing.initialize();
});
