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


    if message.payload == 'EXTERMINATE'
      puts "Human #{message.recipient} marked for extermination"
    end

  end
end
