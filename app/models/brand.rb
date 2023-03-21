class Brand < ApplicationRecord
    has_many :nails, dependent: :destroy
end
