require './models/user'
get '/clients' do
    erb :'/arts/client'
end

post '/users' do
    email =params['email']
    password = params['password']
    user = find_user_by_email(email)

    if user && BCrypt::Password.new(usser['password_digest'])==password 
        session['user_id'] = user['id']
        erb :'/log_in', locals: {
            name:name
        }
        else
            redirect '/clients'
    end
end