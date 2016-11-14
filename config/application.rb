require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Saffa
  class Application < Rails::Application
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :ru
  end
end
