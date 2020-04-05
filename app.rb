require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/new' do
    puppy = Puppy.new(params[:name], params[:breed])
    erb :create_puppy
  end

end
