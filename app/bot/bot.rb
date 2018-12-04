require 'facebook/messenger'

include Facebook::Messenger

Bot.on :message do |message|

      if message.text.include? "Bonjour"
        message.reply(text: "Salut p'tit gars")
      elsif message.text.include? "Bye"
        message.reply(text: "Bon vent")
      else
        message.reply(text: 'Reponse par defaut')
      end
end
