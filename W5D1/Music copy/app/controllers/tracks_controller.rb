class TracksController < ApplicationController
  before_action :must_be_logged_in


  def index
    @tracks = Track.all

    render :index
  end

  def show
    @track = Track.find_by(id: params[:id])
    @notes = @track.notes
    @note = Note.new
    if @track
      render :show
    else
      redirect_to new_album_track_url
    end
  end

  def new
    @track = Track.new
    @albums = Album.all
    render :new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to album_url(@track.album_id)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end


  def edit
    @track = Track.find_by(id: params[:id])
    @albums = Album.all
    if @track
      render :edit
    else
      redirect_to new_album_track_url(@track.album_id)
    end
  end

  def update

    @track = Track.find_by(id: params[:id])

    if @track.update(track_params)
      redirect_to album(@track.album_id)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :edit
    end

  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @track.destroy
    redirect_to album_url(@track)

  end

  private

  def track_params
    params[:track][:ord] = params[:track][:ord].to_i
    params.require(:track).permit(:title, :ord, :lyrics, :album_name)
  end

end
