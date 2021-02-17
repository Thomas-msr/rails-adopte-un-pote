class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
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
      redirect_to meeting_path(@meeting)
    else
      render :show#:template => 'offers_controller/show'
    end
  end

  def meeting_params
    params.require(:meeting).permit(:date, :status, :content, :offer_id)
  end
end
