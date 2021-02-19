class LikesController < ApplicationController
  def index
    @offers = []
    Offer.all.each do |offer|
      offer.likes.each do |like|
        if like.user_id == current_user.id
          @offers << offer
        end
      end
    end
  end

  def create
    @like = Like.new(like_params)
    @like.user_id = current_user.id
    @like.save!
    if params[:whereami] == "offers"
      redirect_to offers_path
    elsif params[:whereami] == "likes"
      redirect_to likes_path
    end

  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    if params[:whereami] == "offers"
      redirect_to offers_path
    elsif params[:whereami] == "likes"
      redirect_to likes_path
    end
  end

  def like_params
    params.permit(:offer_id)
  end
end
