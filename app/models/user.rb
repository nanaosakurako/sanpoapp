class User < ApplicationRecord
    has_secure_password
    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
    def posts
        return Post.where(user_id: self.id)
    end
    has_many :posts
      
end
