class TracksController < ApplicationController
  def create
      @mix = Mix.find(params[:mix_id])
      @track = @mix.tracks.create(params[:track])
      redirect_to mix_path(@mix)
   end
   
  def edit
    @mix = Mix.find(params[:post_id])
    @track = @mix.tracks.find(params[:id])
  end
  
  def destroy
    @mix = Mix.find(params[:post_id])
    @track = @mix.trackss.find(params[:id])
    @track.destroy
    redirect_to mix_path(@mix)
  end
end