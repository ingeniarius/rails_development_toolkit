require 'rails'
module RailsDevelopmentToolkit
  class Railtie < Rails::Railtie
    railtie_name :rails_development_toolkit

    rake_tasks do
      load 'rails_development_toolkit/railties/rails_development_toolkit.rake'
    end
  end
end