Pintriguing.Collections.Boards = Backbone.Collection.extend({
  url: '/api/boards',

  model: Pintriguing.Models.Board,

  getOrFetch: function (id) {
      var model;
      var boards = this;

      if (model = this.get(id)) {
        model.fetch();
        return model;
      } else {
        model = new Todo.Models.Todo({ id: id });
        model.fetch({
          success: function () {boards.add(model) }
        });
        return model;
      }
    }
})
