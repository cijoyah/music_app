class TracksController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tracks = Track.all.order('created_at DESC')
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = current_user.tracks.build
  end

  def create
    @track = current_user.tracks.build(track_params)
    respond_to do |format|
      if @track.save
        format.html {redirect_to @track, notice: 'Track successfully created.'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    respond_to do |format|
      if @track.update(track_params)
        format.html {redirect_to @track, notice: 'Track successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track destroyed.' }
    end
  end

  private
    def track_params
      params.require(:track).permit(:title, :genre, :music, :description, :art_work, :created_at, :remote_image_url, :user_id)
    end
end