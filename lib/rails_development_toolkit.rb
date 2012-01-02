require 'rails_development_toolkit/version'
require 'rails_development_toolkit/railtie' if defined?(Rails)

module Rack
  autoload :DevelopmentMode, "rack/development_mode"
end  