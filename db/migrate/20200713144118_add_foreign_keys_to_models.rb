class AddForeignKeysToModels < ActiveRecord::Migration[6.0]
  def change
    add_reference :bikes, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :bike, foreign_key: true
  end
end
