class ClipsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    album = Album.find(params[:album_id])
    current_user.clip(album)
    flash[:success] = 'クリップしました。'
    redirect_back(:fallback_location => root_path)
  end

  def destroy
    album = Album.find(params[:album_id])
    current_user.unclip(album)
    flash[:success] = 'クリップを解除しました。'
    redirect_back(:fallback_location => root_path)
  end
end
