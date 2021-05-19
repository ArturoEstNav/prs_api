class Tuner < ApplicationRecord
    has_many :guitar_tuners
    has_many :guitars, through: :guitar_tuners
end
