class Dojo < ApplicationRecord
    validates_presence_of :branch, :street, :city, :state, presence: true, :message => "required!"
    validates_length_of :state, length: { is: 2 }d

end
