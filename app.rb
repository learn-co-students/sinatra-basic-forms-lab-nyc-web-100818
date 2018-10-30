# CONTROLLER
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do # GET request to load a homepage. The homepage should go to the main route /.
    erb :index # The home page will also need a new view index.erb.
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    # binding.pry
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    
    erb :display_puppy
  end

end # end of App class
