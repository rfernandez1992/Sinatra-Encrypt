require 'rubygems'
require 'sinatra'

get '/' do
	erb :home
end

get '/aboutme' do
	"Just a place holder til I add an aboutme.erb"
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