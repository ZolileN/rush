class CreateVehicleMakes < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_makes do |t|
      t.string :name
      t.string :note
      t.references :vehicle_type, foreign_key: true

      t.timestamps
    end
  end
end
