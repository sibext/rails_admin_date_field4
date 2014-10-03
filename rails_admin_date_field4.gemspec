$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_date_field4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_date_field4"
  s.version     = RailsAdminDateField4::VERSION
  s.authors     = ["Nikolay Moskvin"]
  s.email       = ["moskvin@sibext.com"]
  s.homepage    = "https://github.com/sibext/rails_admin_date_field4"
  s.summary     = "Rails 4 date field for rails admin"
  s.description = "Uses standard rails date_field for view date and time"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0.2"
end
