require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    old_phrase = params[:phrase]

    new_phrase = PigLatinizer.new(old_phrase)
    @output = new_phrase.add_ay

    erb :output

  end

end
