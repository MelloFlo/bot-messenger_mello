require 'facebook/messenger'

include Facebook::Messenger

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
    }
  ]
)

if message.payload == "HARMLESS"
  message.reply(text: "T'es cool!")
end
if message.payload == "ZERO"
  message.reply(text: "T'es pas cool!")
end


end
