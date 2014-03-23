Pintriguing.Views.UserShow = Backbone.View.extend({

  template: JST['users/show'],

  render: function () {
    var renderedContent = this.template({
      boards: this.model.boards(),
      user: this.model
    })

    this.$el.html(renderedContent)
    return this
  }

});
