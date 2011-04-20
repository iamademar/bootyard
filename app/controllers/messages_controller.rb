class MessagesController < ApplicationController
  def create
    Message.create(params[:message])
    redirect_to request.referrer
  end
end
