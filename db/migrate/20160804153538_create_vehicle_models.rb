class CreateVehicleModels < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_models do |t|
      t.string :name
      t.string :note
      t.references :vehicle_make, foreign_key: true

      t.timestamps
    end
  end
end
