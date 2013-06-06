class TicketMailer < ActionMailer::Base
  default from: "08209ff91754d040facc@cloudmailin.net"

  def new_ticket_confirmation(ticket)
    @ticket = ticket

    # not a secure way of doing this
    headers["ticket_id"] = @ticket.id
    mail to: ENV["HELPDESK_EMAIL"], subject: "New Ticket: #{@ticket.title} ID: #{@ticket.id}"
  end
end
