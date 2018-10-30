# In app.rb build out a GET request to load a homepage. The homepage should go to the main route /.

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @params = params
    erb :display_puppy
  end



end
