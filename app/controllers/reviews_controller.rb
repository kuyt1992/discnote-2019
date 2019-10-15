class ReviewsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  def index
  end

  def show
  end

  def new
  end

  def create
    @album = Album.find(review_params[:album_id])
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = 'レビューを投稿しました。'
      redirect_to album_path(@album)
    else
      @reviews = current_user.feed_reviews.order(id: :desc).page(params[:page])
      flash.now[:danger] = 'レビューの投稿に失敗しました。'
      render 'albums/show'
    end
  end

  def update
  end

  def destroy
    @review.destroy
    flash[:success] = 'レビューを削除しました。'
    redirect_back(fallback_location: root_url)
  end
  
  private
  
  def review_params
    params.require(:review).permit(:album_id, :body, :rate)
  end
  
  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    unless @review
      redirect_to root_url
    end
  end
  
end
