$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pdfjs-rails-engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pdfjs-rails-engine"
  s.version     = PdfjsRailsEngine::VERSION
  s.authors     = ["normz"]
  s.email       = ["johnnormancapule@gmail.com"]
  s.homepage    = ""
  s.summary     = "Integrates Mozilla's pdf.js javascript library to your rails project"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.0"
  # s.add_dependency "jquery-rails"

  #s.add_development_dependency "sqlite3"
  s.add_dependency 'rails-assets-mozilla--pdf.js'
end
