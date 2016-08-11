class VehicleModel < ApplicationRecord
  belongs_to :vehicle_make, class_name: "VehicleMake"

  validates :name, :presence => true
#  validates :note, :presence => true

end
