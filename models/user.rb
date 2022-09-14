def find_user_by_email(email)
    users = run_sql("SELECT * FROM users WHERE email = $1",[email])
    if users.to_a.count >0
        users[0]
    else
        nil
    end
end

def find_user_by_id(id)
    users = run_sql("SELECT * FROM users WHERE id = $1",[id])
    if users.to_a.count >0
        users[0]
    else
        nil
    end
end

def get_user_requirements(id)
    requirements = run_sql("SELECT * FROM requirements WHERE userid = $1", [id])
    requirements
end

def create_user(first_name, last_name, email, password)
    password_digest = BCrypt::Password.create(password)
    run_sql("INSERT INTO users(first_name, last_name, email, password_digest) VALUES($1,$2,$3,$4)",[first_name,last_name,email,password_digest])
end

def add_requirement(userid, description)
    run_sql("INSERT INTO requirements (userid, description) VALUES ($1, $2)", [userid, description])
end

def update_requirement(id, description)
    run_sql("UPDATE requirements SET description = $1 WHERE id = $2", [description, id])
end

def delete_requirement(id)
    run_sql("DELETE FROM requirements WHERE id = $1", [id])
end