window.Pintriguing = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    //current user
    current_user = new Pintriguing.Models.User({
      id: parseInt($(document).find('#content').attr('data-cuser-id'))
    })

    current_user.fetch({
      success: function (u) {
      }
    })
    //all the categories
    categories = new Pintriguing.Collections.Categories();
    categories.fetch();

    //pins collection
    pins = new Pintriguing.Collections.PinsOnBoards();

    var $rootEl = $('#content')

    pins.fetch({
      success: function (resp) {

        // render header
      var header = new Pintriguing.Views.Header({
        model: current_user,
        collection: pins
      });
      $("#header").html(header.render().$el);


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
