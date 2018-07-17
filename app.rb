require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    old_phrase = params[:user_phrase]

    new_phrase = PigLatinizer.new
    # new_phrase.words = old_phrase
    # binding.pry
    @output = new_phrase.piglatinize(old_phrase)

    erb :output

  end

end
