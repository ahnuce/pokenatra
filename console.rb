require 'pry'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainers'

binding.pry

puts "this line fixes binding.pry bug"