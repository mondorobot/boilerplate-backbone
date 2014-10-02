require 'rubygems'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

# Load tasks from lib/tasks/*.rake
Dir.glob('lib/tasks/*.rake').each {|task| load task}

task :default => :spec
