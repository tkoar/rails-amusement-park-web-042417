class Attraction < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides

  def associate_user_with_attraction(user)
    self.users << user
    ride = Ride.create(attraction_id: self.id, user_id: user.id)
    ride.take_ride
  end
end
