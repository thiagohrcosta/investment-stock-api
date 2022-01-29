class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.decimal :max_price
      t.decimal :min_price
      t.decimal :percent_change

      t.timestamps
    end
  end
end
