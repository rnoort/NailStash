class Brand < ApplicationRecord
    has_many :nails, dependent: :destroy, counter_cache: true

    validates :name, presence: true
end
