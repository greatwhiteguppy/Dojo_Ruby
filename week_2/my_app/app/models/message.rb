class Message < ApplicationRecord
  belongs_to :user

  #same as this type of method
  # def user
  #     Message.find_by_sql("SELECT * FROM users WHERE users.id = #{self.user_id}")
  # end
end
