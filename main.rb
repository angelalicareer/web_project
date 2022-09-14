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

get '/contact/:id' do
  submitted = false
  if params['id'] && params['id'] != '0'
    submitted = true
  end
  erb :'contact', locals: {
    submitted: submitted
  }
end

post '/contact/submit' do 
  redirect '/contact/1'
end

get '/' do
  erb :'index'
end
