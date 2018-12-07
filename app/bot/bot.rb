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
      },
    ]
  )
   if message.reply =

   end


message.typing
message.reply(text: "Bye")
end
