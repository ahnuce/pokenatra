require 'active_record'
require 'ffaker'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'models/pokemon'
# require_relative 'models/trainer'

#get all pokemons
get "/pokemons" do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get "/pokemons/new" do
  @pokemon = Pokemon.create(params[:pokemon])
  @pokemon.save
  erb :"pokemons/new"
end

get "/pokemons/:id" do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
# get "/pokemons/:id" do
#   @pokemon = Pokemon.find(params[:id])
#   erb :"pokemons"
# end

post "/pokemons/new" do
  @pokemon = Pokemon.create(params[:pokemon])
  @pokemon.save
  redirect "/pokemons/#{@pokemon.id}"
end

post "/pokemons/:id" do
  @pokemon = Pokemon.create(params[:pokemon])
  @pokemon.save
  redirect "/pokemons"
end

# delete "/pokemons" do
#   @pokemon = Pokemon.delete(params[:pokemon])
#   redirect "/pokemons"
# end
