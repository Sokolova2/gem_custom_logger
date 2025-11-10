# frozen_string_literal: true

require '../gem_custom_logger'

module GemCustomLogger
  class Railtie < Rails::Railtie
    initializer "gem_custom_logger.configure_rails_initialization" do
      GemCustomLogger::CustomLogger.print
    end
  end
end