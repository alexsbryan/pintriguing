Pintriguing.Collections.PinsOnBoards = Backbone.Collection.extend({
  url: "/api/pins_on_boards",

  model: Pintriguing.Models.PinOnBoard,

  initialize: function (models, options) {
    if(options){
    this.board = options.board
  }
  },

  parse: function (jsonResp) {
    if(jsonResp.page) {
      this.page = parseInt(jsonResp.page);
      this.total_pages = parseInt(jsonResp.total_pages);
      delete jsonResp.page
      delete jsonResp.total_pages
    }
    return jsonResp['pins_on_boards'];
  }

});
