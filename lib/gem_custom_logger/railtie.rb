# frozen_string_literal: true

require 'gem_custom_logger'
require 'rails/railtie'

module GemCustomLogger
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../tasks/custom_logger.rake', __dir__)
    end

    initializer 'gem_custom_logger.configure_rails_initialization' do
      GemCustomLogger::CustomLogger.print
    end
  end
end
