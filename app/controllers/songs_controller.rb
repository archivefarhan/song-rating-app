class SongsController < ApplicationController
  def index
    songs = Songs.all
    render json: songs.as_json
  end

  def show
    id = params["id"]
    song = Song.find(id)

    render json: song.as_json
  end

  def create
    song = Song.new(title: params["title"], album: params["album"], artist: params["artist"], year: params["year"], rating: params["rating"])
    song.save
    render json: song.as_json
  end

  def update
    id = params["id"]
    song = Song.find(id)

    song.title = params["title"] || song.title
    song.album = params["album"] || song.album
    song.artist = params["artist"] || song.artist
    song.year = params["year"] || song.year
    song.rating = params["rating"] || song.rating

    song.save
    render json: song.as_json
  end

  def destroy
    id = params["id"]
    song = Song.find(id)

    song.destroy
    render json: { message: "Song was deleted!" }
  end
end
