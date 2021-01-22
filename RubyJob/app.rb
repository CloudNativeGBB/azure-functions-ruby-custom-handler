require 'sinatra'
require 'json'

port = ENV["FUNCTIONS_CUSTOMHANDLER_PORT"] || 8080
set :port, port

before do
	request.body.rewind
	@request_payload = JSON.parse request.body.read
end

get '/' do
	content_type :json
	{ song: "Wake me Up"}.to_json
end

post '/RubyJob' do
	content_type :json
	
	someResponseMessage = "Hello World!"

	{
		"Outputs": {
			"message": @request_payload,
			"res": {
				"body": someResponseMessage
			}
		}
	}.to_json
end