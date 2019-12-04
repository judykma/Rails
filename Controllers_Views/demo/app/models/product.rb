class Product < ApplicationRecord
    validates :name, :description, :price, presence: true
    validates :description, length: { minimum: 10 }
    validates :price, numericality: { only_integer: false }
end
