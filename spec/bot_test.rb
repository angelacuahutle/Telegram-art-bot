# frozen_string_literal: true

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
