class CreateOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
