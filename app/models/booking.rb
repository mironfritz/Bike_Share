class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  def start_time
    self.start_date
  end
end
