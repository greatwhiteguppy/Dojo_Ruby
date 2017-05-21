class Person < ApplicationRecord
    has_many :events
    has_many :attendees
    has_many :events_attending, through: :attendees, source: :event #going through to show that many-to-many relationship
    validates :name, :age, presence: true
    validates :name, length: {in: 2..20}
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }

    def how_many_events
        self.events.count
    end
    # use that method to do something like Person.find(3).how_many_events in terminal

    # def full_name
    #     "#{self.first_name} #{self.last_name}"
    # end  - example if we had these fields another method we could use
end
