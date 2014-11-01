#!/usr/bin/env rake

task :coffee do
  puts 'CoffeeScript compiled!' if system 'coffee -c -o js coffee'
end

task :run do
  puts 'Starting server'
  system 'node js/app.js'
end
