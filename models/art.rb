def all_graphic_design
    run_sql("SELECT * FROM graphic_design ORDER BY id")
end

def all_web_design
    run_sql("SELECT * FROM web_design ORDER BY id")
end