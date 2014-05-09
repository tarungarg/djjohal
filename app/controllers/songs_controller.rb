class SongsController < ApplicationController

  before_filter :singer_record, :only => [:create, :new, :destroy]

  # GET /songs
  def index
    @songs = Song.find_all_by_singer_id(params[:singer_id])
    @singer = Singer.find(params[:singer_id])
    render :layout => "singers"
  end

  # GET /songs/new
  def new
    @song = @singer.songs.build

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /songs
  def create
    @song = @singer.songs.build(params[:song])

    respond_to do |format|
      if @song.save
        flash[:notice] = 'Song was successfully created.'
        format.html { redirect_to singer_songs_path(@singer)}
      else
        format.html { render :action => "new" }
      end
    end
  end

  # DELETE /songs/1
  def destroy
    @song = @singer.songs.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to(singer_songs_path(@singer.id)) }
    end
  end

  def audio_download
   @song = Song.find(params[:id])
   file_path = @song.audio_file_name
   if !file_path.nil?
     send_file @song.audio.path, :x_sendfile => true 
   else 
     redirect_to songs_url
   end
  end

  private

  def singer_record
    @singer = Singer.find(params[:singer_id])
  end
end
