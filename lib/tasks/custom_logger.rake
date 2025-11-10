# frozen_string_literal: true

namespace :custom_logger do
  desc 'This task for custom rails command'
  task :custom_logger, [:message] => :environment do |_t, args|
    puts "My custom logger: #{args.message || 'Welcome in GemCustomLogger'}"
  end
end
