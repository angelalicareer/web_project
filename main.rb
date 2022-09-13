     
require 'sinatra'
require 'httparty'
require 'dotenv/load'

get '/' do
  HTTParty.get("http://omdbapi.com/?apikey=#{ENV['db4a51ae']}&t=jaws").to_s
end





