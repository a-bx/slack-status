require 'sinatra'
require 'rest-client'
# Slack app
class Slack < Sinatra::Base
  get '/' do
    return 'hello world'
  end

  post '/status' do
    token = params[:token]
    profile = CGI.escape(params.to_json)

    edpoint = 'users.profile.set'
    url = "http://slack.com/api/#{edpoint}?token=#{token}&profile=#{profile}"
    RestClient.get url
  end
end
