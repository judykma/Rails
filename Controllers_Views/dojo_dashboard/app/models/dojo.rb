class Dojo < ApplicationRecord
    validates_presence_of :branch, :street, :city, :state, presence: true, :message => "required!"
    validates :state, length: { is: 2 }
end
