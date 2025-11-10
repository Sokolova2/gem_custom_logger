# frozen_string_literal: true

require_relative 'gem_custom_logger/version'
require 'gem_custom_logger/railtie' if defined?(Rails)
require 'logger'

module GemCustomLogger
  class Error < StandardError; end

  class CustomLogger < ::Logger
    def self.print
      message = Rails.configuration.custom_logger || 'Hello World!'
      Rails.logger.debug message
    end
  end
end
