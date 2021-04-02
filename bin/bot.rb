# frozen_string_literal: true

require 'telegram/bot'
require_relative '../lib/random_reference'

token = '1713703261:AAFEZEjpEH1P9jnutJahXpAEyAVmcCx5ziQ'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/showmesomething'
      new_reference = RandomReference.new
      bot.api.send_message(chat_id: message.chat.id, text: "Clavel wants you to see this! #{new_reference.generate}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end
