class VehicleType < ApplicationRecord

  validates :name, :presence => true
  validates :note, :presence => true


  has_many :orders, class_name: "Order"

end
