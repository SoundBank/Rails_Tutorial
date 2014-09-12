require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"


Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
  config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  config.assets.precompile += %w( *.svg *.eot *.woff *.ttf )  
  end
end
