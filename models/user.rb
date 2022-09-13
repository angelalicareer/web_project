def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1",[email])
    if users.to_a.count >0
        users[0]
    else
        nil
    end
end
