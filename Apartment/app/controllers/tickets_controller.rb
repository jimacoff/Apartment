class TicketsController < ApplicationController
  
  def index
  	@tickets = Ticket.all.order(:address)
  end

  def complain
  	@tickets = Ticket.where selection: 'complain'
  end

  def maintenance
  	@tickets = Ticket.where selection: 'maintenance'
  end

  def other
  	@tickets = Ticket.where selection: 'other'
  end

  def edit
  end

  def new
  	@ticket = Ticket.new
  end

  def show
  	@ticket = Ticket.find(params[:id])
  end

  def create
  	@user = current_user
    @ticket = @user.tickets.build(ticket_params)

      if @ticket.save
        redirect_to tickets_path, notice: 'Ticket was successfully submitted.' 
      else
        render "new"
      end
    
  end

  def update
    
  end
  def destroy
  	@ticket = Ticket.find(params[:id]).destroy
    redirect_to tickets_path
  end

  private
  def ticket_params
    params.require(:ticket).permit(:content, :surname, :name, :address, :flat_nr, :phone, :selection)
  end
end
