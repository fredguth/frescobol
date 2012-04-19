class TracksController < ApplicationController
  #after_filter:get_real_url, only => [:edit, :create]
  def create
      @mix = Mix.find(params[:mix_id])
      @track = @mix.tracks.create(params[:track])
      redirect_to mix_path(@mix)
   end
   
  def edit
    @mix = Mix.find(params[:mix_id])
    @track = @mix.tracks.find(params[:id])
  end
  
  def destroy
    @mix = Mix.find(params[:mix_id])
    @track = @mix.tracks.find(params[:id])
    @track.destroy
    redirect_to mix_path(@mix)
  end
  
  def get_real_url
    # @set_url = @track.url
    # s = "Player.getRealUrl("+@set_url+");"
     # render :update do|page|
     # page <<  s

  end

    

  
end