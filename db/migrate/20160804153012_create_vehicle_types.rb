class CreateVehicleTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_types do |t|
      t.string :name
      t.string :note
      t.string :icon

      t.timestamps
    end
  end
end
