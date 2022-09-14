require './models/art'

get '/work' do
    cases = all_graphic_design()
    erb :'work', locals: {
      cases: cases
    }
  end
