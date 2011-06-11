window.LightboxContainer = $.Class.create({
   initialize: function(){
       this.currentLightbox = null;
       this.lightboxes = new Array();
   },
   add: function(lightbox){
        this.lightboxes.push(lightbox);
        this.currentLightbox = this.lightboxes.length - 1;
   },
   remove: function(box){
       this.hideError();
       box.remove();
       this.lightboxes.pop();
       this.currentLightbox -= 1;
   },
   pop: function(){
       this.remove(this.current().box);
   },
   showError: function(){
       this.current().showError();
   },
   hideError: function(){
       this.current().hideError();
   },
   current: function(){
       return(this.lightboxes[this.currentLightbox]);
   },
   setError: function(message){
       $('#lightbox-error-message').html(message);
       this.showError();
   }
});

window.Lightbox = $.Class.create({
    initialize: function(contents, title, options){
        this.title = title;
        this.options = options;
        this.box = $(document.createElement('div'));
        this.box.html(contents);
        this.error = $('#lightbox-error');
        this.display();
    },
    display: function(){
       this.box.dialog({
            modal: true,
            title: this.title,
            height: this.options.height || 300,
            width: this.options.width || 400,
            resizable: false,
            draggable: false,
            stack: true,
            position:['center', 100],
            close: function(){
                window.lightboxContainer.remove($(this));
            },
            closeOnEscape: true
       });
       this.alignLightboxError();
    },
    show: function(){
       this.box.show();
    },
    hide: function(){
      this.box.hide();
    },
    close: function(){
        this.container.remove();
        this.box.dialog("close");
        this.closeError();
    },
    alignLightboxError: function(){
        var left = this.box.parent().offset().left;
        var top = this.box.parent().offset().top + this.box.parent().height() + 7;
        this.error.css({
            "left"  : left,
            "top"   : top,
            "width" : this.box.parent().width()
        });
    },
    showError: function(){
        if(!this.error.is(":visible"))
            this.error.slideToggle();
    },
    hideError: function(){
        if(this.error.is(":visible"))
            this.error.slideToggle();
    },
    closeError: function(){
        this.error.hide();
    }
});
