require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class RandomReference
    :attr_reader :reference

    CATALGUE_OF_REFERENCES=["Hannah Black", "Dani de la Torre", "Monique wite"]

    def initialize 
     @reference=reference 
    end

    def generate 
        new_generated_reference = CATALGUE_OF_REFERENCES.sample
    end  
end