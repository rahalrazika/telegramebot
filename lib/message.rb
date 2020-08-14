require 'telegram/bot'
require_relative 'modules/config'
require_relative '../lib/translater'

class Translatbot
  attr_reader :message, :bot
  def initialize
    msg_bot
  end

  private

  def msg_bot
    Telegram::Bot::Client.run(Config::TOKEN_API) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to Translator')

        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: 'See you next time ')
        else
          translat_word(message, bot)

        end
      end
    end
  end

  def translat_word(message, bot)
    if message.text.start_with?('translate/')
      bot.api.send_message(chat_id: message.chat.id, text: 'The Result is Loading..It may take some time to show ^^ ')
      word_array = message.text.split('/')
      word_translat = word_array[1]
      result = Word.api_translate(word_translat)

      bot.api.send_message(chat_id: message.chat.id, text: result['result'])

    else
      bot.api.send_message(chat_id: message.chat.id, text: 'unknown commande')
    end
  end
end
