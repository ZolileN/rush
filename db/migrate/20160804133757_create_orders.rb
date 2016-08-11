class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :pick_up, null: false, default: ""
      t.string :drop_off, null: false, default: ""
      t.integer :method, default: 0, null: false
      t.datetime :pick_up_at
      t.datetime :drop_off_at
      t.integer :driver_id, default: 0, null: false
      t.integer :person_id, default: 0, null: false
      t.integer :vehicle_type_id, default: 0, null: false
      t.integer :status, default: 0, null: false
      t.datetime :accepted_at
      t.datetime :completed_at
      t.datetime :canceled_at
      t.string :distance, null: false, default: ""
      t.string :eta, null: false, default: ""
      t.string :cost, null: false, default: ""
      t.timestamps
    end
  end
end
