# frozen_string_literal: true

require 'telegram/bot'
require 'net/http'
require 'json'

class RandomReference
  attr_reader :reference

  CATALGUE_OF_REFERENCES = %w[Hannah Dani Monique].freeze

  def initialize
    @reference = reference
  end

  def generate
    CATALGUE_OF_REFERENCES.sample
  end
end
