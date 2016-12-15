require 'pry'
require 'active_record'
require 'ffaker'

#cnnnect to the database
require_relative 'db/connection'

#load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

binding.pry

puts "this line fixes binding.pry bug"
