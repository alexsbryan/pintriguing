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
        var pin = new Pintriguing.Models.Pin({ url: attrs.url, pin_id: parseInt(this.model)})

        // embedly api call for images
        $.embedly.defaults.key = "04c61e496d6f4659a1a6225c29e745d8";
        $.embedly.extract(attrs.url).progress(function(data) {
          // $("#modal").modal("hide");
 //          $(".modal-backdrop").remove();
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
