class PrisonsController < ApplicationController
  def show
    @prison = Prison.find(params[:id])
  end
end
