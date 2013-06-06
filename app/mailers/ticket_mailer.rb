class TicketMailer < ActionMailer::Base
  default from: "no-reply@helpdesk.com"

  def new_ticket_confirmation(ticket)
    @ticket = ticket

    mail to: ENV["HELPDESK_EMAIL"], subject: "New Ticket: #{ticket.title}"
  end
end
