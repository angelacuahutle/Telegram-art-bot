# frozen_string_literal: true

require 'telegram/bot'
require 'net/http'
require 'json'

class RandomReference
  attr_reader :reference

  CATALGUE_OF_REFERENCES = [
    'https://vimeo.com/hannahblack'
    'http://clavel.be/'
    'https://www.patreon.com/DanidelaTower?l=es'
    'https://www.instagram.com/p/CMz-ykqDzLX/'
  ].freeze
  def initialize
    @reference = reference
  end

  def generate
    CATALGUE_OF_REFERENCES.sample
  end
end
