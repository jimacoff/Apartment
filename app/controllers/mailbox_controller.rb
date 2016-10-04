class MailboxController < ApplicationController
   before_action :authenticate_user!

  
  def inbox
    @inbox = mailbox.inbox
     @url = request.path_info
    
  end

  def sent
    @sent = mailbox.sentbox
     @url = request.path_info
  end

  def trash
    @trash = mailbox.trash
     @url = request.path_info
  end
end
