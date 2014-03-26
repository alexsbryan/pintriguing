Pintriguing.Views.PinPicSelect = Backbone.View.extend({

  initialize: function (options) {
    //why does boardNames disappear?
    this.images = options.images;
    this.boardNames = options.boardNames;
  },

  events: {
    'click img': 'submit'
  },

  template: JST['pins/pic_select'],

  render: function () {
    var renderedContent = this.template({
      pin: this.model,
      images: this.images
    })
    this.$el.html(renderedContent)
    return this
  },

  submit: function (event) {
    event.preventDefault();
    $("a.cancel").last().click()
    var img = $(event.currentTarget).data("url");
    var that = this;

    this.model.set({img_url: img});


         var newPOBView = new Pintriguing.Views.NewPin({
           boardNames: that.boardNames,
           model: this.model
         });

         var modal = new Backbone.BootstrapModal({
           content: newPOBView,
         }).open();
  }



});
