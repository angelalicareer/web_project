get '/sign_up' do
    erb :'/sessions/sign_up'
end

post '/new' do
    first_name = params['first_name']
    last_name = params['last_name']
    email = params['email']
    password = params['password']

    create_user(first_name,last_name,email,password)
    erb :'/sessions/log_in', locals: {
        name: first_name
    }
end