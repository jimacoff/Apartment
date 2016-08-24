class RepliesController < ApplicationController

	def create 
		@ticket = Ticket.find(params[:ticket_id])
		@reply = @ticket.replies.build(replies_params)
		@reply.user = current_user
		@reply.save

		redirect_to ticket_path(@ticket)
	end

	def destroy
		@property = Property.find (params[:question_id])
		@reply = @ticket.reply.find(params[:id]).destroy
		redirect_to ticket_path(ticket)
	end

	private

		def replies_params
			params.require(:reply).permit(:content)	
		end
	
end
