class ReviewController < ApplicationController

  def new
  end

  def record
    @review = Review.new
    @review.title = params[:review][:title]
    @review.content = params[:review][:content]
    @review.img_url = params[:review][:image]
    @review.save
    
    redirect_to '/review/index'
  end

  def index
    @reviews = Review.all
  end

  def destroy
    review = Review.find(params[:review_id])
    review.destroy

    redirect_to '/review/index'
  end

  def edit
    @review = Review.find(params[:review_id])
  end

  def update
    review = Review.find(params[:review_id])
    review.title = params[:review][:title]
    review.content = params[:review][:content]
    review.img_url = params[:review][:image]
    review.save
    
    redirect_to '/review/index'
  end

end
