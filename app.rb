# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

# class runs a web-message-board as a sinatra application
class MessageBoard < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end
