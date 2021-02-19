class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    if @review.save
      flash[:success] = "Object successfully created"
      redirect_to @review.meeting
    else
      flash[:error] = "Something went wrong"
      redirect_to @review.meeting
    end
  end
  

  def index
    @reviews = Review.all
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating, :destinataire, :user_id, :meeting_id)
  end
  
  
end
