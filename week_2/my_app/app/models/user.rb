class User < ApplicationRecord
    has_many :messages
    # same as this method
    # def messages
    #     User.find_by_sql("SELECT * FROM messages WHERE messages.user_id = #{self.id}")
    # end
    has_one :address
end
