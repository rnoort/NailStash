class Nail < ApplicationRecord
  belongs_to :brand

  validates :brand_id, presence: true
  validates :code, presence: true
  validates :color, presence: true
  validates :amount, presence: true
end
