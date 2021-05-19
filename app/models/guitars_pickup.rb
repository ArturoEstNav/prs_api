class GuitarsPickup < ApplicationRecord
  belongs_to :guitar
  belongs_to :pickup
end
