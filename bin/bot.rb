require 'telegram_bot'
token = '1711010278:AAFESksDfGU8KhvcZaPyM7ytQLqMjzt-SOs'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /welcome/i
      reply.text = "Welcome to Cenech Technology Ltd. The home of Green Energy. We are here to take your orders and resolute on serving you better."
    when /greet/i
      reply.text = "Hello, #{message.from.first_name}. 🤖"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end