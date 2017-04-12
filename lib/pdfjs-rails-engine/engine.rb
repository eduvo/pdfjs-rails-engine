module PdfjsRailsEngine
  class Engine < ::Rails::Engine
    isolate_namespace PdfjsRailsEngine

    initializer 'pdfjs-rails-engine.assets.precompile', group: :all do |app|
      app.config.assets.precompile += %w(
        pdf.js-gh-pages/web/viewer.css
        pdf.js-gh-pages/web/l10n.js
        pdf.js-gh-pages/web/viewer.js
        pdf.js-gh-pages/build/pdf.js
        pdf.js-gh-pages/build/pdf.worker.js
      )
    end

    initializer 'pdfjs-rails-engine.assets.paths' do |app|
      app.config.assets.paths << File.expand_path("#{root}/lib")
    end
  end
end
