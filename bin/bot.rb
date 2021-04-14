# rubocop:disable Layout/LineLength

# files
require_relative './news'
require_relative './motivational'
require_relative './inspiration'
# dependencies
require 'telegram/bot'
require 'motivational_quotes'
require 'dotenv'

Dotenv.load

class NewsBot
  attr_reader :text

  Telegram::Bot::Client.run(ENV['TELEGRAM_TOKEN']) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to Telegram-News-Bot')
      when '/news'
        news = News.new
        bot.api.send_message(chat_id: message.chat.id, text: news.random_news)
      when '/motivational'
        motivational = motivational.new
        bot.api.send_message(chat_id: message.chat.id, text: motivational.random_motivational)
      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: 'Bye! See you again.')
      else
        bot.api.send_message(chat_id: message.chat.id, text: 'Invalid input, , Please enter /start /stop /news /motivational or /inspiration')
      end
    end
  end
end

# rubocop:enable Layout/LineLength


# require 'telegram_bot'
# token = '1711010278:AAFESksDfGU8KhvcZaPyM7ytQLqMjzt-SOs'
# bot = TelegramBot.new(token: token)

# bot.get_updates(fail_silently: true) do |message|
#   puts "@#{message.from.username}: #{message.text}"
#   command = message.get_command_for(bot)

#   message.reply do |reply|
#     case command
#     when /welcome/i
#       reply.text = "Welcome to Cenech Technology Ltd. The home of Green Energy. We are here to take your orders and resolute on serving you better."
#     when /greet/i
#       reply.text = "Hello, #{message.from.first_name}. 🤖"
#     else
#       reply.text = "I have no idea what #{command.inspect} means."
#     end
#     puts "sending #{reply.text.inspect} to @#{message.from.username}"
#     reply.send_with(bot)
#   end
# end