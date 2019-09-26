require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    user_phrase = params["words"]
    @words = PigLatinizer.new(user_phrase)
    
    erb :piglatinize
  end
  
end