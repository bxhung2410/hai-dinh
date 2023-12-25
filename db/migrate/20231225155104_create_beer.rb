class CreateBeer < ActiveRecord::Migration[7.1]
  def change
    create_table :beers do |t|
      t.string :name, null: false, index: true
      t.string :description, null: false
      t.references :category, null: false, foreign_key: true, index: true
      t.integer :quantity, null: false, default: 0
      t.decimal :default_price, null: false, default: 0.0
      t.timestamps
    end
  end
end
