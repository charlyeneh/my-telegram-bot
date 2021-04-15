# rubocop:disable Layout/LineLength

# files
require_relative './news'
require_relative './motivational'

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
        bot.api.send_message(chat_id: message.chat.id, text: 'Invalid input, , Please enter /start /stop /news  or /motivational')
      end
    end
  end
end

# rubocop:enable Layout/LineLength
