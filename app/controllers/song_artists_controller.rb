class SongArtistsController < ApplicationController
  before_action :require_login
  before_action :set_song_artist, only: [:show, :edit, :update, :destroy]

  def index
    @song_artists = SongArtist.all
  end

  def new
    @song_artist = SongArtist.new
  end

  def edit
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def set_song_artist
      @song_artist = SongArtist.find(params[:id])
    end

    def song_artist_params
      params.require(:song_artist).permit(:song_id, :artist_id)
    end
end
