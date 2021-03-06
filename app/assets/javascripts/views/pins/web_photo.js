Pintriguing.Views.PickWebPhoto = Backbone.View.extend({

  initialize: function (options) {
    this.boardNames = options.boardNames;

  },

  template: JST['pins/pick_web_photo'],

  events: {
    "submit #pick-web-photo": "extract"
  },

  render: function () {
    var renderedContent = this.template()
    this.$el.html(renderedContent);
    return this
  },

  extract: function (event) {
      event.preventDefault();
      $("a.cancel").last().click()

        var that = this;
        var attrs = $(event.currentTarget).serializeJSON()
        ///NAN error
        var pin = new Pintriguing.Models.Pin({ url: attrs.url})

        // embedly api call for images
        $.embedly.defaults.key = "fee1c62bff7c4eebb29955bad02ce071";
        $.embedly.extract(attrs.url).progress(function(data) {

          var images = data.images;

          // render view with images for selection
          var showView = new Pintriguing.Views.PinPicSelect({
            model: pin,
            images: images,
            boardNames: this.boardNames
          });

          var modal = new Backbone.BootstrapModal({
            content: showView
          }).open()

        });
  }

});
