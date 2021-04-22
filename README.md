# my-telegram-bot

![](https://img.shields.io/badge/Microverse-blueviolet)

Capstone Project

# my-telegram-bot

A Telegram Bot built with Ruby. It can be used to:

- Request a motivational quote by typing /motivate.
- Or you can request jokes by typing /jike.
These motivational quotes and jokes are randomly generated.

## Getting started

- To run the telegram-bot, you must have Ruby installed on your computer. You can downloand and install Ruby from the link below.
- windows [Ruby installer](https://rubyinstaller.org/).
- MAC and LINUX [Ruby official site](https://www.ruby-lang.org/en/downloads/).

## Once Ruby is downloaded and installed, please follow the instructions bellow

### 1- Clone the repo in your local folder where you want to run it

- Run the command below in your terminal
`git clone https://github.com/charlyeneh/my-telegram-bot.git`.

### 2- Install bundle

- Run `bundle install` to install the gems from the `Gemfile`.

### 3- Download telegram and create a bot

- Download the [Telegram app](https://desktop.telegram.org/), create an account.
- Launch  [Botfather](https://t.me/botfather). Follow the instructions to create a bot.
- You will then receive an API Token that looks like this: `1256478963:BBCHKATY496166theonsgankgngnrorgnorg`
- Link the token to your bot by creating the .env file in your root directory and then add to token in the variable `TELEGRAM_TOKEN =`

### 4- Run the bot

- Run `ruby main/bot.rb` to start the bot.
- Open the link to the bot that you've got from the Botfather.

## How to use the bot

- From the 'my-telegram-bot' project folder, Run 'ruby ./bin/main.rb'
- Then go to telegram desktop app and search for "CenechBot", which is the bot username.
- Click on the user name and apply the bellow commands.

This Bot has five commands

- [x] /start - It start the bot, and the bot says Welcome.
- [x] /joke- It display article randomly from various new websites.
- [x] /motivate - It displays a random motivation quote.
- [x] /stop  - It stop the bot.


## The My-Telegram-bot video presentation live link

- Video [](https://www.loom.com/share/b9c5d6b434e74b7cb987cce5e271c260)

## Built With

- Ruby
- Telegram API
- Dotenv
- Rubocop
- Rspec
- VsCode

## Run tests

- To run the rspec tests, install rspec with that command in your terminal `gem install rspec`.
- Run rspec on the root folder in your terminal to check all the tests.

## Author

👤 **Eneh Charles Chukwunweike**

- GitHub: [@charlyeneh](https://github.com/charlyeneh)
- Twitter: [@twitterhandle](https://twitter.com/ProgrammerBaby?s=09)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/charles-chukwunweike-eneh-5345a2147)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

MIT License

Copyright (c) 2021 Eneh Charles Chukwunweike 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=======

### Acknowledgements

- Microverse
