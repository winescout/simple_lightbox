require "simple_lightbox/simple_lightbox_helper"

module SimpleLightbox

  ActionView::Base.send :include, SimpleLightboxHelper

end
