class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power
  validates :strength, presence: true
end
