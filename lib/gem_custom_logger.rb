# frozen_string_literal: true

require_relative "gem_custom_logger/version"

module GemCustomLogger
  class Error < StandardError; end

  class CustomLogger < ::Logger
    def self.print
      puts "Hello world!"
    end
  end
end
