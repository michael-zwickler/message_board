# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

# class runs a web-message-board as a sinatra application
class MessageBoard < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:message_board)
  end

  post '/message_board' do
    Message.add_message(name: params[:name], message: params[:message])
    redirect('/')
  end

  run! if app_file == $0
end
