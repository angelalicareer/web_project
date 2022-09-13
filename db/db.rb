require 'pg'

def run_sql(sql, sql_params = [])
    PG.connect(ENV['DATABASE_URL'] || {dbname: 'web_project'})
  results = db.exec_params(sql, sql_params)
  db.close
  results
end