require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Crocker
  class Application < Rails::Application
    config.load_defaults 5.2
    config.autoload_paths += [
      Rails.root.join("app", "workers"),
      Rails.root.join("lib")
    ]
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: true,
        helper_specs: true,
        routing_specs: false,
        controller_specs: true,
        request_specs: true
      g.integration_tool :rspec
      g.performance_tool :rspec
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
    config.encoding = "utf-8"
    config.filter_parameters += [:password, :email, :first_name, :last_name]
    config.time_zone = 'Eastern Time (US & Canada)'
    config.public_file_server.headers = { 'Cache-Control' => 'public, max-age=31536000' }
    config.active_record.schema_format = :ruby
    config.generators.system_tests = nil
  end
end
