#!/usr/bin/env ruby

require 'rspec'

TEST_FILES = ['test_specs/success_spec.rb', 'test_specs/fail_spec.rb', 'test_specs/broken_spec.rb']

def run_file(file)
  puts('------------------------------------------------')
  puts "About to run file #{file}:"
  RSpec::Core::Runner.run([file])
end

def forward
  TEST_FILES.each{ |file| run_file(file) }
end

def backward
  TEST_FILES.reverse.each{ |file| run_file(file) }
end

puts('================================================')
forward
puts('================================================')
# backward
puts('================================================')
