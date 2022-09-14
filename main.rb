require 'sinatra'
require 'bcrypt'
require 'httparty'
require 'dotenv/load'
require './db/db'

require './controllers/arts_controller'
require './controllers/sessions_controller'
require './controllers/users_controller'

enable :sessions

get '/about' do
  erb :'about'
end

get '/services' do
  erb :'service'
end

get '/contact' do
  erb :'contact'
end

get '/' do
  erb :'index'
end
