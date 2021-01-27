class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :unit
      t.integer :amount
      t.integer :ingredient_id
      t.integer :cake_id

      t.timestamps
    end
  end
end
