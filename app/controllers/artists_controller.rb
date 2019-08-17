class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(id: :desc).page(params[:page]).per(12)
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums.order(id: :desc).page(params[:page]).per(12)
  end
end
