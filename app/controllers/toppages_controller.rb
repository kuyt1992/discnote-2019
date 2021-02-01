class ToppagesController < ApplicationController
  def index
    
    if logged_in?
      @review = current_user.reviews.build
      @reviews = current_user.feed_reviews.order(:id => :desc).page(params[:page])
    end
  end
end
