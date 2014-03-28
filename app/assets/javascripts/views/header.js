Pintriguing.Views.Header = Backbone.View.extend({

  template: JST["header"],

  initialize: function () {
    this.listenTo(categories, 'sync', this.render)
  },

  events: {
    'click #addPin': 'addPin'
  },

  addPin: function (event) {
    var pin = $(event.currentTarget).attr('data-pinid');
    var pickPhotoView = new Pintriguing.Views.PickWebPhoto({
      boardNames: this.boardNames,
      model: pin
    });
    var modal = new Backbone.BootstrapModal({
      content: pickPhotoView
    }).open()
  },

  render: function () {
    var renderedContent = this.template({ user: this.model})
    this.$el.html(renderedContent)
    return this
  }

})