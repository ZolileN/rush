class Order < ApplicationRecord

  belongs_to :person, class_name: "Person"
  belongs_to :driver, class_name: "Driver"
  belongs_to :vehicle_type, class_name: "VehicleType"


  validates :pick_up, :presence => true
  validates :drop_off, :presence => true



end
