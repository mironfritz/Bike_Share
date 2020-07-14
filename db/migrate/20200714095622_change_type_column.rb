class ChangeTypeColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :type
    add_column :bikes, :bike_type, :string
  end
end
