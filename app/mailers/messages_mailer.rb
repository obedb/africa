class MessagesMailer < ApplicationMailer
	def send_message(message)
	    @message = message

	    mail to: @message.email, subject: "Sign Up Confirmation"
  	end
end
