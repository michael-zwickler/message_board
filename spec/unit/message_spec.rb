# frozen_string_literal: true

RSpec.describe Message do
  describe '.add_message' do
    subject { Message.add_message(name: 'Jason', message: 'This is me') }

    it 'returns a Message object' do
      expect(subject).to be_a(Message)
    end
    it 'the message object stores the authors_name' do
      expect(subject.name).to eq('Jason')
    end
    it 'the message object stores the message' do
      expect(subject.message).to eq('This is me')
    end
  end

  describe '.all' do
    subject { described_class }

    it 'returns an array object' do
      expect(subject.all).to be_a(Array)
    end
    it 'the first element is the latest input' do
      Message.add_message(name: 'Freddy', message: 'This is me')
      expect(subject.all.first.name).to eq('Freddy')
    end
  end
end
