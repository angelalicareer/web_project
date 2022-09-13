require 'sinatra'
require 'bcrypt'
require 'httparty'
require 'dotenv/load'
require './db/db'

require './controllers/arts_controller'
require './controllers/clients_controller'
require './controllers/users_controller'
get '/about' do
  erb: 'arts/about'
end

get '/services' do
  erb: 'arts/service'
end

get '/contact' do
  erb: 'arts/contact'
end


get '/' do
  erb :'arts/index'
end
