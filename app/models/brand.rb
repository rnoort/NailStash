class Brand < ApplicationRecord
    has_many :nails, dependent: :destroy

    validates :name, presence: true
end
