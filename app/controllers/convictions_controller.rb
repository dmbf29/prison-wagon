class ConvictionsController < ApplicationController

  def new
    # both of these are for the form
    @conviction = Conviction.new
    @criminal = Criminal.find(params[:criminal_id])
    # @crimes = Crime.order(:name)
    # @crimes = @criminal.crimes
    # @crimes = Crime.where.not(id: [1, 4]) # gets the ids out of the crimes
    @crimes = Crime.where.not(id: @criminal.crimes).order(:name) # gets the ids out of the crimes
  end

  def create
    @criminal = Criminal.find(params[:criminal_id])
    @conviction = Conviction.new(conviction_params)
    @conviction.criminal = @criminal
    if @conviction.save
      redirect_to prison_path(@criminal.prison)
    else
      render :new
    end
  end

  private

  def conviction_params
    params.require(:conviction).permit(:crime_id)
  end
end
