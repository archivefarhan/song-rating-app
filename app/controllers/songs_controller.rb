class SongsController < ApplicationController
  def index
    @song = Song.all
    render template: "songs/index"
  end

  def show
    id = params["id"]
    @song = Song.find(id)

    render template: "songs/show"
  end

  def create
    song = Song.new(title: params["title"], album: params["album"], artist: params["artist"], year: params["year"], rating: params["rating"])
    song.save
    @song = song
    render template: "songs/show"
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
    @song = song
    render template: "songs/show"
  end

  def destroy
    id = params["id"]
    song = Song.find(id)

    song.destroy
    @song = song
    render json: { message: "Song was deleted!" }
  end
end
