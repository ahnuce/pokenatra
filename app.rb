require 'active_record'
require 'ffaker'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainers'

#get all pokemons
get "/pokemons" do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end
