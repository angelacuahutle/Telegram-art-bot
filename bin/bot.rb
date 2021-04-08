require 'telegram/bot'
require_relative '../lib/random_reference'
require_relative '../lib/clavel_bot'

token = ''
Telegram::Bot::Client.run(token) do |bot|
  ClavelBot.run_clavel_bot
end
