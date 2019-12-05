class Survey < ApplicationRecord
    validates_presence_of :name, :location, :language, presence: true, :message => "required!"
    # validates :name, length: { in: 2..20}, :message
    validates_length_of :comment, :minimum => 10, :too_short => "must be at least 10 characters long."
end