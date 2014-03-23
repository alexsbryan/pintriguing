Pintriguing.Collections.PinsOnBoards = Backbone.Collection.extend({
  url: "/api/pins_on_boards",

  model: Pintriguing.Models.PinOnBoard,

  initialize: function (models, options) {
    if(options){
    this.board = options.board
  }
  }

});
