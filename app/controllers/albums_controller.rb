class AlbumsController < ApplicationController
  def index
    @albums = Album.order(id: :desc).page(params[:page]).per(12)
  end

  def show
    @album = Album.find(params[:id])
  end
end
