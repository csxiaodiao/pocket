require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

Bundler.require(*Rails.groups)

module PocketMoney
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    config.time_zone = 'Beijing'

    config.i18n.available_locales = [:'zh-CN', :en]
    config.i18n.default_locale = :'zh-CN'

    config.x.site = config_for(:x__site).with_indifferent_access
    config.x.wechat = config_for(:wechat).with_indifferent_access


    config.generators do |g|
      g.assets false
      g.helper false
      g.decorator  false
      g.test_framework :rspec
    end
  end
end
