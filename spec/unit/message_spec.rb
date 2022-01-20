# frozen_string_literal: true

RSpec.describe Message do
  describe '.add_message' do
    it 'returns a Message object' do
      message = Message.add_message(name: 'Jason', message: 'This is me')
      expect(message).to be_a(Message)
    end
    it 'the message object stores the authors_name' do
      message = Message.add_message(name: 'Jason', message: 'This is me')
      expect(message.name).to eq('Jason')
    end
    it 'the message object stores the message' do
      message = Message.add_message(name: 'Jason', message: 'This is me')
      expect(message.message).to eq('This is me')
    end
    it 'the message object stores the date' do
      message = Message.add_message(name: 'Jason', message: 'This is me')
      expect(message.time).to be_a(Time)
    end
  end
end
