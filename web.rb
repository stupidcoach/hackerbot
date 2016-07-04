require 'sinatra/base'

module Hackerbot
  class Web < Sinatra::Base
    get '/' do
      '❤️ Hackernews'
    end

    post '/' do
      message = params[:text].gsub(params[:trigger_word], '').strip
      action = ruler message
      reponse = Command.new(action, message).command
    end
  end
end
