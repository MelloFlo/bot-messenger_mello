require 'facebook/messenger'

include Facebook::Messenger

Bot.on :message do |message|




# message.reply(
#   text: "T'es prêt ?",
#   quick_replies: [
#     {
#       content_type: 'text',
#       title: "Ouiiiii !",
#       payload: 'HARMLESS'
#     },
#     {
#       content_type: 'text',
#       title: "Non !",
#       payload: 'ZERO'
#     }
#   ]
# )
#
# if payload == "HARMLESS"
#   message.reply(text: "T'es cool!")
# end
# if payload == "ZERO"
#   message.reply(text: "T'es pas cool!")
# end
message.reply(
  attachment: {
    type: 'template',
    payload: {
      template_type: 'button',
      text: 'Human, do you like me?',
      buttons: [
        { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
        { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
      ]
    }
  }
)
end
Bot.on :postback do |postback|
  postback.sender    # => { 'id' => '1008372609250235' }
  postback.recipient # => { 'id' => '2015573629214912' }
  postback.sent_at   # => 2016-04-22 21:30:36 +0200
  postback.payload   # => 'EXTERMINATE'

  if postback.payload == 'EXTERMINATE'
    puts "Human #{postback.recipient} marked for extermination"
  end
end
