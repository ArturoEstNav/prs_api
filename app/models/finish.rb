class Finish < ApplicationRecord
  has_many :guitars, through: :guitar_finishes
  has_many :guitar_finishes, dependent: :destroy
end
