Pintriguing.Models.PinOnBoard = Backbone.Model.extend({
  url: '/api/pins_on_board',

  // board: function () {
  //   if (!this._board) {
  //     this._board = new Pintriguing.Models.Board([], {
  //       board: this
  //     });
  //   }
  //
  //   return this._board;
  // },
  //
  // pin: function () {
  //   if (!this._pin) {
  //     this._pin = new Pintriguing.Models.Pin([], {
  //       pin: this
  //     });
  //   }
  //
  //   return this._pin;
  // },
  //
  // owner: function () {
  //   if (!this._owner) {
  //     this._owner = new Pintriguing.Models.User([], {
  //       owner: this
  //     });
  //   }
  //
  //   return this._owner;
  // },
  //
  //
  // parse: function (jsonResp) {
  //   if (jsonResp.board) {
  //     var board = jsonResp.board;
  //     this.board().set(jsonResp.board)
  //     delete jsonResp.board
  //   }
  //   if (jsonResp.owner) {
  //     var user = jsonResp.owner;
  //     this.owner().set(jsonResp.owner)
  //     delete jsonResp.owner
  //   }
  //   if (jsonResp.pin) {
  //     var pin = jsonResp.pin;
  //     this.pin().set(jsonResp.pin)
  //     delete jsonResp.pin;
  //   }
  //
  //  return jsonResp;
  //
  // }

});
