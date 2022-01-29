class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :opportunity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
