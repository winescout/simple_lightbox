require 'simple_lightbox/simple_lightbox_helper'

module SimpleLightbox

  class Railtie < Rails::Railtie

    initializer "simple_lightbox.simple_lightbox_helper" do
      ActionView::Base.send :include, SimpleLightboxHelper
    end

  end

end