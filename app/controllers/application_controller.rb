require './config/environment'
require './app/models/space_invaders'
require './app/models/homemade'
require './app/models/interactive_buddy'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/space-invaders' do
    @choice = Space.new
    erb :space_invaders
  end
  
  post '/homemade' do
    @choice = Homemade.new
    erb :homemade
  end
  
  post '/interactive-buddy' do 
    @choice = Buddy.new 
    erb :interactive_buddy
  end
end
