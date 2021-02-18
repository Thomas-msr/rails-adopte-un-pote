class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    if @review.save
      flash[:success] = "Object successfully created"
      redirect_to @review
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def index
    @reviews = Review.all
  end


  
  
end
