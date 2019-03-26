class User < ApplicationRecord
  has_many :destinations
  has_many :trips
  has_many :reviews#, dependent: :destroy
  # has_many :active_relationships, class_name: "Relationship",
  #                                 foreign_key: "follower_id",
  #                                 dependent: :destroy
  # has_many :following, through: :active_relationships, source: :followed
  # has_many :followers, through: :passive_relationships
  # has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

  # def follow(other_user)
  #   following << other_user
  # end
  #
  # def unfollow(other_user)
  #   following.delete(other_user)
  # end
  #
  # def following?(other_user)
  #   following.include?(other_user)
  # end

  def new_user_trip(title, destination_id)
    @trip = Trip.new
    @trip.title = title
    @destination = Destination.find(destination_id)
    @trip.user_id = self.id
    @trip.destination = @destination
    @trip.save
    self.trip = @trip
  end

  def self.search(search)
    if search
      user = User.find_by(name: search)
    end
  end

 end
