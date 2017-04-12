module PdfjsRailsEngine
  class PdfViewerController < ApplicationController
    layout 'pdfjs_rails_engine/application'
    before_filter :additional_headers

    def index
    end

    def additional_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end
  end
end
