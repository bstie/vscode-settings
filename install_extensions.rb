#!/bin/ruby
require 'yaml'

ext_file = nil

def print_separator
  puts '##################################################################'
end

if ARGV.first == 'js'
  ext_file = YAML.load_file('./javascript.yml')
  print_separator()
  puts "# Installing JavaScript extensions"
  print_separator()
elsif ARGV.first == 'rails'
  ext_file = YAML.load_file('./rails.yml')
  print_separator()
  puts '# Installing Ruby on Rails extensions'
  print_separator()
end

unless ext_file.nil?
  length = ext_file['extensions'].length
  count = 1
  ext_file['extensions'].each do |extension|
    print "[#{count}/#{length}] installing #{extension}" + "\r"
    system "code --install-extension #{extension}"
    $stdout.flush
    count+=1
  end
  print_separator()
end
