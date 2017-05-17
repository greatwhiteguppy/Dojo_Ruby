class Person < ApplicationRecord
    validates :name, :age, presence: true
    validates :name, length: {in: 2..20}
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
