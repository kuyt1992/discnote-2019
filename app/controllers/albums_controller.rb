class AlbumsController < ApplicationController
  
  def index
    @albums = Album.order(id: :desc).page(params[:page]).per(12)
  end

  def show
    if logged_in?
      @album = Album.find(params[:id])
      @review = current_user.reviews.build
    else
      @album = Album.find(params[:id])
      @reviews = @album.reviews.order(id: :desc).page(params[:page]).per(12)
    end
  end

end
