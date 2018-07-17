require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
	get '/' do
		erb :index
	end

	post '/piglatinize' do
		pig_latin = PigLatinizer.new()
		pig_latin.piglatinize(params[:user_phrase])

		# erb :user_input
	end
end