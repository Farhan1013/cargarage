class Garage
  include Mongoid::Document
  field :date, type: Date
  field :year, type: Integer
  field :make, type: String
  field :model, type: String
  field :price, type: Integer
  field :mileage, type: Integer
  field :phone, type: Integer
  field :email, type: String
  field :comments, type: String
end
