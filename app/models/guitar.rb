class Guitar < ApplicationRecord
    has_many :necks
    has_one :body
    has_one :electronic_spec_list
end
