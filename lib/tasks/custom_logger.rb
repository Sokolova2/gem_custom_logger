# frozen_string_literal: true

namespace :custom_logger do
  desc "This task for custom rails command"
  task :custom_logger, [:message] => environment do |t, args|
    p "My custom logger: #{args.message || 'Welcome in GemCustomLogger'}"
  end
end