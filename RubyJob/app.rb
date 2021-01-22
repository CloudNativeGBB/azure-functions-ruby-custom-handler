require 'sinatra'
require 'json'

port = ENV["FUNCTIONS_CUSTOMHANDLER_PORT"] || 8080

set :port, port

get '/' do
	content_type :json
	{ song: "Wake me Up"}.to_json
end

post '/RubyJob' do
	content_type :json
	{ song: "Wake me Up before you go go"}.to_json
end