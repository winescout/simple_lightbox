module SimpleLightbox

  module SimpleLightboxHelper

    def display_lightbox(partial, title, opts={})
      contents = render :partial=>partial
      page << "lightboxContainer.add(new Lightbox(#{contents.to_json}, #{title.to_json}, #{opts.to_json}))"
    end

    def close_lightbox
      page << "lightboxContainer.pop()"
    end

    def lightbox_error_container
      "<div class=\"lightbox-error\"></div>".html_safe
    end


  end

end
