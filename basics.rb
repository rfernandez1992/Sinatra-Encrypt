require 'sinatra/base'

class App1 < Sinatra::Base
	get '/' do
		erb :home
	end

	get '/aboutme' do
		erb :aboutme
	end

	get '/secret' do
		erb :secret
	end

	post '/secret' do
		@secret = params["secret"]

		erb :decrypt

	end

	get '/decrypt/secret' do
		@nig = params["nig"]
		erb :decryptsecret
	end
end



# get '/hello/:name/:city' do
# 	"Hello there, #{params[:name]} from #{params[:city].upcase}."
# end

# get '/more/*' do
# 	params[:splat]
# end

# get '/form' do
# 	erb :form
# end

# post '/form' do
# 	"You said '#{params[:words]}'!"
# end