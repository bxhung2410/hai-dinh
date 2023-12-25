class CreateLocation < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :address, null: false, index: true
      t.boolean :is_default, null: false, default: false
      t.references :customer, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
