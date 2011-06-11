module SimpleLightbox

  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    class_option :template_engine

    def copy_files
      template "simple_lightbox.css", "public/stylesheets/simple_lightbox.css"
      template "simple_lightbox.js", "public/javascripts/simple_lightbox.js"
    end

  end

end