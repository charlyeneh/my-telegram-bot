require 'telegram/bot'
require_relative 'motivate'
require_relative 'joke'

class Bot
  def initialize
    token = '1711010278:AAFESksDfGU8KhvcZaPyM7ytQLqMjzt-SOs'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} ,
                            welcome to Cenech Services Channel Bot. The chat bot is to keep you motivated")
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/motivate'
          values = Motivate.new
          value = values.select_random
          bot.api.send_message(chat_id: message.chat.id, text: (value['text']).to_s, date: message.date)
        when '/joke'
          values = Joke.new
          value = values.make_the_request
          bot.api.send_message(chat_id: message.chat.id, text: (value['joke']).to_s, date: message.date)
        else
          bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name},
                                you need to use /start,  /stop , /motivate or /joke")
        end
      end
    end
  end
end
