require "bundler/gem_tasks"
require "cucumber/rake/task"
require 'rake/testtask'

Cucumber::Rake::Task.new

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task(default: [:test, :cucumber])
