Rails Development Toolkit
=========================

Installation
------------
Add to your Gemfile:

    gem 'rails_development_toolkit', :group => :development

And install it via bundler:

    bundle install

Rake tasks
----------

    rake development:config:prepare        # Build templates from current development config files (existing files will be overwritten)
    rake development:config:setup          # Build development config files from templates (existing files will be overwritten)


Rack::DevelopmentMode
---------------------
DevelopmentMode is rack middleware module, which inject special markup to each HTML page, so it is easy to visually identify production or development mode you are in.
 
To enable it add to your environment/development.rb:

    config.middleware.use ::Rack::DevelopmentMode
