class User < ApplicationRecord
  has_many :Apts
  has_many :reservations
  has_many :owner_reservations, through: :vans, source: :reservations
end
