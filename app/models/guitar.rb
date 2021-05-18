class Guitar < ApplicationRecord
    has_many :necks
    has_one :body

end
