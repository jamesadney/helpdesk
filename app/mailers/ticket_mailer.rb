class TicketMailer < ActionMailer::Base
  default from: "08209ff91754d040facc@cloudmailin.net"

  def new_ticket_confirmation(ticket)
    @ticket = ticket

    mail to: ENV["HELPDESK_EMAIL"], subject: "New Ticket: #{ticket.title}"
  end
end
