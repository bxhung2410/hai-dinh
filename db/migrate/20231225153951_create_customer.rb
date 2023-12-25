class CreateCustomer < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name, null: false, index: true
      t.string :usual_name, null: false, index: true
      t.string :phone_number, null: false, index: true
      t.timestamps
    end
  end
end
