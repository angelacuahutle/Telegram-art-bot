require 'telegram/bot'
require_relative '../lib/random_reference'

token = '1713703261:AAFEZEjpEH1P9jnutJahXpAEyAVmcCx5ziQ'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/letsstart'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/iwantsomeartsuggestions'
      new_reference = RandomReference.new
      bot.api.send_message(chat_id: message.chat.id, text: "Clavel wants you to see this! #{new_reference.generate}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    else
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Sorry, #{message.from.first_name}, I don't recognize that instruction")
    end
  end
end
