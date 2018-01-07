class AlbumsController < ApplicationController
  before_action :must_be_logged_in
  
  def index
    @albums = Album.all

    render :index
  end

  def show
    @album = Album.find_by(id: params[:id])
    @tracks = @album.tracks
    if @album
      render :show
    else
      redirect_to new_album_url
    end
  end

  def new
    @album = Album.new
    @bands = Band.all
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to band_url(@album.band_id)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end


  def edit
    @album = Album.find_by(id: params[:id])
    @bands = Band.all
    if @album
      render :edit
    else
      redirect_to new_album_url
    end
  end

  def update

    @album = Album.find_by(id: params[:id])

    if @album.update(album_params)
      redirect_to band_url(@album.band_id)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :edit
    end

  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    redirect_to albums_url

  end

  private

  def album_params
    params[:album][:year] = params[:album][:year].to_i
    params.require(:album).permit(:title, :year, :band_name, :studio)
  end

end
