# frozen_string_literal: true

require 'pg'

# Messages provides the interface to the Database
class Message
  attr_reader :id, :name, :message, :date

  def initialize(id:, name:, message:, date:)
    @id = id
    @name = name
    @message = message
    @date = date
  end

  def self.all
    result = connect_to_db.exec("SELECT * FROM messages ORDER BY id DESC;")
    result.map { |message| Message.new(id: message['id'], name: message['author'], message: message['message'], date: message['date']) }
  end

  def self.add_message(name:, message:)
    result = connect_to_db.exec("INSERT INTO messages (author, message, date) VALUES('#{name}', '#{message}', '#{Time.now}') RETURNING id, author, message, date;")
    Message.new(id: result.first['id'], name: result.first['author'], message: result.first['message'], date: result.first['date'])
  end

  private_class_method def self.connect_to_db
    database = 'message_board'
    PG.connect(dbname: database)
  end
end
