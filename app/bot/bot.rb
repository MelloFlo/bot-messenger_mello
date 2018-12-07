require 'facebook/messenger'

include Facebook::Messenger


def reponse
  if message.text == "Ouiiiii !"
    message.reply(text: "T'es cool!")
  elsif
    message.text == "Non !")
    message.reply(text: "T'es pas cool!")
  else
    reponse
  end
end

Bot.on :message do |message|
  message.reply(
    text: "T'es prêt ?",
    quick_replies: [
      {
        content_type: 'text',
        title: "Ouiiiii !",
        payload: 'HARMLESS'
      },
      {
        content_type: 'text',
        title: "Non !",
        payload: 'ZERO'
      },
    ]
  )
reponse

message.reply(text: "Bye")
end
