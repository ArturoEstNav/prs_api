class Bridge < ApplicationRecord
    has_many :guitar_bridges
    has_many :guitars, through: :guitar_bridges
end
