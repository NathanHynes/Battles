require 'sinatra'
require "shotgun"

configure do
  enable :sessions
  set :session_secret, 'StarWars'
end

get '/' do
  'Hello World'
end

get '/secret' do
  'These are not the droids you are looking for'
end

get '/bands' do
  'My Favourite band is Bombay Bicycle Club'
end

get '/picture' do
  @header = ["The Bombay Bicycle Club", "Ed Nash", "Jack Steadmen", "Jamie MacColl", "Suren de Saram"].sample
  erb :images
end
