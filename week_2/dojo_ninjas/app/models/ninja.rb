class Ninja < ApplicationRecord
  belongs_to :dojo
  # do we need - has_one :dojo ?? 
  validates :first_name, :last_name, presence: true
end
