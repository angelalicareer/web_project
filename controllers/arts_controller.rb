require './models/art'

get '/work' do
  graphic = all_graphic_design()
  web = all_web_design()
  erb :'work', locals: {
    graphic: graphic,
    web: web
  }
end
