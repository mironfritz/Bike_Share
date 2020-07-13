class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :start_day
      t.date :end_date

      t.timestamps
    end
  end
end
