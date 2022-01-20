# frozen_string_literal: true

class Message

  attr_reader :name, :message, :time

  def initialize(name:, message:)
    @name = name
    @message = message
    @time = Time.now
  end

  def self.add_message(name:,message:)
    return Message.new(name: name, message: message)
  end
end
