class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    # Rails.logger.log params[:headers][:Subject]
    raise params.inspect
    render :text => 'success', :status => 200 # a status of 404 would reject the mail
  end
end
