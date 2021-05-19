class Guitar < ApplicationRecord
    has_many :necks, dependent: :destroy
    has_one :body, dependent: :destroy
    has_one :electronic_spec_list, dependent: :destroy
    has_many :guitar_bridges, dependent: :destroy
    has_many :guitar_pickups, dependent: :destroy
    has_many :guitar_tuners, dependent: :destroy
    has_many :bridges, through: :guitar_bridges
    has_many :pickups, through: :guitar_pickups
    has_many :tuners, through: :guitar_tuners
end
