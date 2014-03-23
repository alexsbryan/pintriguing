Pintriguing.Models.User = Backbone.Model.extend({
  urlRoot: 'api/users',

  boards: function () {
    if(!this._boards) {
      this._boards = new Pintriguing.Collections.Boards([], {
        user: this
      });
    }
    return this._boards;
  },

  parse: function (jsonResp) {
    if(jsonResp.boards) {
      this.boards().set(jsonResp.boards, {parse: true});
      delete jsonResp.boards;
    }
    return jsonResp;
  }


});
