class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.save! unless @message.content.blank?
    redirect_to meeting_path(message_params[:meeting_id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id, :meeting_id)
  end
end
