class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :title
      t.text :description
      t.string :type
      t.float :price_per_day

      t.timestamps
    end
  end
end
