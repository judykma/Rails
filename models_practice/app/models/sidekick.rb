class Sidekick < ApplicationRecord
  belongs_to :hero 
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
end
