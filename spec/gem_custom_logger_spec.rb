# frozen_string_literal: true

require 'spec_helper'
require 'rails'
require "gem_custom_logger"

RSpec.describe GemCustomLogger::CustomLogger do
  describe 'custom logger initialization' do
    let(:logger_double) { double("Logger") }
    let(:config_double) { double("Configuration", custom_logger: "Hello World!") }

    before do
      allow(Rails).to receive(:logger).and_return(logger_double)
      allow(Rails).to receive(:configuration).and_return(config_double)
    end

    after do
      GemCustomLogger::CustomLogger.print
    end

    it 'returns custom logger' do
      expect(logger_double).to receive(:debug).with("Hello World!")
    end
  end
end