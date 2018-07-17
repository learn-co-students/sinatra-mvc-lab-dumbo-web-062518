require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = params[:user_phrase]
    phrase = PigLatinizer.new
    @new_latin = phrase.piglatinize(@pig_latin)
    erb :piglatinize
  end

end
