class OffersController < ApplicationController
  def index

    if params[:query].present?
      sql_query = " \
      offers.title @@ :query \
      OR offers.availabilities @@ :query \
      OR users.city @@ :query \
      "
      @offers = Offer.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @meeting = Meeting.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    if @offer.save!
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :availabilities, :user_id)
  end
end
