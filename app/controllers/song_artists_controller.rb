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
    @song_artist = SongArtist.new(song_artist_params)

    respond_to do |format|
      if @song_artist.save
        format.html { redirect_to @song_artist, notice: 'Song/Artist relationship was successfully created.' }
        format.json { render :show, status: :created, location: @song_artist }
      else
        format.html { render :new }
        format.json { render json: @song_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @song_artist.update(song_params)
        format.html { redirect_to @song_artist, notice: 'Song/Artist relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_artist }
      else
        format.html { render :edit }
        format.json { render json: @song_artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song_artist.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song/Artist relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_song_artist
      @song_artist = SongArtist.find(params[:id])
    end

    def song_artist_params
      params.require(:song_artist).permit(:song_id, :artist_id)
    end
end
