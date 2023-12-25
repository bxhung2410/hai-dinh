class CreateSupplier < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false, index: true
      t.string :phone_number, null: false, index: true
      t.string :address
      t.timestamps
    end
  end
end
