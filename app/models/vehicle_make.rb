class VehicleMake < ApplicationRecord
  belongs_to :vehicle_type, class_name: "VehicleType"


  validates :name, :presence => true
  validates :note, :presence => true

end
