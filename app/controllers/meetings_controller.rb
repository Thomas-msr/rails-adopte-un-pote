class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
    @message = Message.new
  end

  def new
    @meeting = Meeting.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
    @meeting.status = "pending"
    if @meeting.save!
      Message.create!(content: meeting_params[:content], user_id: current_user.id, meeting_id: @meeting.id) unless meeting_params[:content].empty?
      redirect_to meeting_path(@meeting)
    else
      render :show#:template => 'offers_controller/show'
    end
  end

  def update
    @meeting = Meeting.find(params[:id])
    if params[:commit] == "Accepter cette rencontre"
      @meeting.status = "accepted"
    elsif params[:commit] == "Refuser cette rencontre"
      @meeting.status = "refused"
    elsif params[:commit] == "Annuler cette rencontre"
      @meeting.status = "canceled"
    end
    @meeting.save

    redirect_to meetings_path
=begin       if @meeting.update_attributes(meeting_params)
        flash[:success] = "Object was successfully updated"

      else
        flash[:error] = "Something went wrong"
        redirect_to @meeting
      end
=end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:date, :status, :content, :offer_id, :commit)
  end
end
