class CriminalsController < ApplicationController
  def new
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new
  end

  def create
    @prison = Prison.find(params[:prison_id])
    @criminal = Criminal.new(criminal_params)
    @criminal.prison = @prison
    if @criminal.save
      redirect_to prison_path(@criminal.prison)
    else
      render :new
    end
  end

  def destroy
    @criminal = Criminal.find(params[:id])
    @criminal.destroy # aka execute
    redirect_to prison_path(@criminal.prison)
  end

  private

  def criminal_params
    params.require(:criminal).permit(:name, :sentence, :image_url)
  end
end

# http request -> routes -> controller -> view
