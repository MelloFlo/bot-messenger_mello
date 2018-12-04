Bot.on :message do |message|
  message.typing_on
  if message.text.include? "bonjour"
    message.reply(text: "hello"+message.id )
  else
    message.reply(text: "hello")
  end
end
