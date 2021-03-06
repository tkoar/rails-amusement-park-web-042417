class AttractionsController < ApplicationController
  #before_action :authenticate

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  # def go_for_ride

  # end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :min_height, :nausea_rating, :happiness_rating)
  end
end
