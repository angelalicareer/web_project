require './models/user'

get '/users/user_welcome' do
    if session['user_id']
        user = find_user_by_id(session['user_id'])
        erb :'/users/user_portal', locals: {
            name: user['first_name']
        }
    else
        erb :'/sessions/user_welcome'
    end
end

get '/users/new' do
    erb :'/users/sign_up'
end

post '/users/sign_up' do
    first_name = params['first_name']
    last_name = params['last_name']
    email = params['email']
    password = params['password']
    create_user(first_name, last_name, email, password)

    erb :'/users/user_portal', locals: {
        name: first_name
    }
end

post '/users/login' do
    email =params['email']
    password = params['password']
    user = find_user_by_email(email)

    if user && BCrypt::Password.new(user['password_digest']) == password 
        session['user_id'] = user['id']
        erb :'/users/user_portal', locals: {
            name: user['first_name']
        }
    else
        redirect '/users/user_welcome'
    end
end
