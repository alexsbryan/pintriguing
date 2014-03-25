Pintriguing.Models.Category = Backbone.Model.extend({
  urlRoot: '/api/categories',

  pins_on_boards: function () {
    if(!this._pobs) {
      this._pobs = new Pintriguing.Collections.PinsOnBoards([], {
        category: this
      });
    }
    return this._pobs;
  },

  parse: function (jsonResp) {
    if(jsonResp.pins_on_boards) {
      this.pins_on_boards().add(jsonResp.pins_on_boards);
      this.page = parseInt(jsonResp.page);
      this.total_pages = parseInt(jsonResp.total_pages);
      delete jsonResp.pins_on_boards;
    }
    return jsonResp;
  }

});
