# spec/game_test.rb

require_relative '../lib/random_reference'

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
    # let(:reference) { RandomReference.new }
    it 'doesnt recognize your command' do
      expect(ClavelBot.run_clavel_bot('/strarsot')).to include("I don't recognize that instruction")
    end
    it 'recognize your command' do
      expect(ClavelBot.run_clavel_bot('/letsstart')).to include("Hello,")
    end
  end
end
