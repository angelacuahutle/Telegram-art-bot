# spec/game_test.rb

require_relative '../lib/random_reference'
require_relative '../lib/clavel_bot'

describe RandomReference do
  describe '#generate' do
    let(:reference) { RandomReference.new }
    it 'returns a recommendation' do
      expect(reference.generate).to be_instance_of(String)
    end
  end
end

describe ClavelBot do
  describe '#reply_message' do
    let(:clavel) {ClavelBot.new.start_telegram_bot}
    it 'doesnt recognize your command' do
      expect(clavel.reply_message '/strarsot').to include("I don't recognize that instruction")
    end
    it 'recognize your command' do
      expect(clavel.reply_message '/letsstart').to include("Hello,")
    end
  end
end
