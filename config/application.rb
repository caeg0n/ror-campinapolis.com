require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module CampinapolisCom
  class Application < Rails::Application
    config.i18n.default_locale = :"pt-BR"
    I18n.enforce_available_locales = false
    config.to_prepare do
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.to_prepare do
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.generators do |g|
      g.assets false
    end
    config.time_zone = 'Buenos Aires'
    Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
      config.assets.paths << path
    end
    #setup inicial
    config.cloudinary_prefix = 'campinapolis'
    if Rails.env.production?
      config.middleware.insert_before ActionDispatch::Cookies, Rack::SslEnforcer
      config.force_ssl = true
    end
    require Rails.root.join("lib/custom_public_exceptions")
    config.exceptions_app = CustomPublicExceptions.new(Rails.public_path)
  end
end
