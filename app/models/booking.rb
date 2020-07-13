class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  belongs_to :user, through: :bike
end
