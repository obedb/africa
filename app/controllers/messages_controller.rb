class MessagesController < ApplicationController
	def create
		@message = Message.new(name: params[:name], phone: params[:phone], email: params[:email], content: params[:content], file: params[:file])
		if @message.save
			MessageMailer.send_message(@message).deliver_now
			redirect_to '/'
		else
		end
	end
end
