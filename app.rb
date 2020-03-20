require 'sinatra/base'
require './database_connection_setup'
require './lib/peep_services'
require './lib/user_services'
require 'sinatra/flash'
class ChitterApp < Sinatra::Base
  register Sinatra::Flash
  get '/' do
    erb :index
  end
  get '/peep/new' do
    erb :'peep/new'
  end
  post '/peeps' do
    PeepServices.create(params['text'], 1)
    redirect '/peeps'
  end
  
  get '/peeps' do
    @peeps = PeepServices.all
    erb :'peep/all'
  end
  post '/users' do
    if UserServices.exists?(params['username'], params['email']) == true
      flash[:notice] = "Username or Email already exists"
      # redirect '/users/new'
    else
      UserServices.create(params['name'], params['username'], params['email'], params['password'], params['country'])
    end
  end
  get '/users/new' do
    erb :'users/new'
  end
  post '/users/new' do
    erb :'users/new'
  end

end
