class Garage
  include Mongoid::Document
  field :date, type: String
  field :model, type: String
  field :make, type: String
  field :vin, type: String
  field :tech, type: String
  field :parts, type: String
  field :comments, type: String
end
