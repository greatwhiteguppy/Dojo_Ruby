class Event < ApplicationRecord
  belongs_to :person
  has_many :attendees
  has_many :people, through: :attendees
end
