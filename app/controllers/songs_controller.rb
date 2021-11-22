class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :update, :destroy]
  def index
      @songs = Song.all
  end

  def new
      @song = Song.new
  end

  def create
      @song = Song.new(song_params)

      if @song.save
          flash[:notice] = "A new track has been added"
          redirect_to songs_path
      else
          flash[:error] = "There are some errors encountered"
          render :new
      end
  end

  def edit
      @song = Song.find(params[:id])
  end

  def update
      song_params = params.require(:song).permit(:url, :name, :credits)

      if @song.update(song_params)
          redirect_to songs_path
      else 
          render :edit
      end
  end

  def destroy
      @song.destroy
      redirect_to songs_path, notice: "The song was successfully deleted"
  end

  private

  def set_song
      @song = Song.find(params[:id])
  end

  def song_params
      params.require(:song).permit(:url, :name, :credits)
  end


end