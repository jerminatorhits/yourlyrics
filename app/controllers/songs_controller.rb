

class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]


  def index
    if params[:search].blank?
      @songs = Song.all.paginate(:page => params[:page], :per_page => 50)
    else
      @songs = Song.__elasticsearch__.search(params[:search]).paginate(:page => params[:page], :per_page => 50).results
    end
  end

  # GET /songs
  # GET /songs.json

=begin
  def index

    if params[:q].nil?
      @songs = []
    else
      @songs = Song.search params[:q] 
    end

    @search = Song.search do
      fulltext params[:search]
      paginate(:page => params[:page])
    end
    # # binding.pry
    @songs = @search.results

    #@songs = Song.first
    #@songs = Song.all
    # binding.pry
    #@songs = Song.first
    #@songs = Song.all
    #@songs = Song.paginate(:page => params[:page])
  end
=end

  def search
    if params[:q].nil?
      @songs = []
    else
      @songs = Song.search(params[:q]).paginate(:page => params[:page], :per_page => 50)
    end
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    #@song = Song.find(params[:id])
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:tid, :mxmid, :lyrics_hash)
    end
end
