class ChangePriceToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :price_per_day
    add_column :bikes, :price_per_day, :integer
  end
end
