class RidesController < ApplicationController


  def new

  end

  def create
    @ride = Ride.create(user_id: session[:user_id], attraction_id: params[:attraction_id])
    flash[:warning] = @ride.take_ride
    redirect_to user_path(User.find_by(id: session[:user_id]))
  end
end
