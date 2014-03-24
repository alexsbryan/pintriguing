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
      this.pins_on_boards().set(jsonResp.pins_on_boards);
      delete jsonResp.pins_on_boards;
    }
    return jsonResp;
  }

});
