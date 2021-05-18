class GuitarTuner < ApplicationRecord
  belongs_to :guitar
  belongs_to :tuner
end
