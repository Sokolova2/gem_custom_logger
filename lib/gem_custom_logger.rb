# frozen_string_literal: true

require_relative "gem_custom_logger/version"
require "gem_custom_logger/custom_logger"
require "gem_custom_logger/railtie" if defined?(Rails)

module GemCustomLogger
  class Error < StandardError; end

  class CustomLogger < ::Logger
    def self.print
      puts "Hello world!"
    end
  end
end
