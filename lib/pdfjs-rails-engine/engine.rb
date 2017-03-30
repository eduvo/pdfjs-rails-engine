require 'rails-assets-mozilla--pdf.js'

module PdfjsRailsEngine
  class Engine < ::Rails::Engine
    isolate_namespace PdfjsRailsEngine

    initializer 'pdfjs-rails-engine.assets.precompile', group: :all do |app|
      app.config.assets.precompile += %w(
        pdf/viewer.css
        pdf/pdf_viewer.css
        pdf/annotation_layer_builder.css
        pdf/text_layer_builder.css
        pdf/pdf.js
      )
    end

    initializer 'pdfjs-rails-engine.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end
