class Post < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 140}}
    validates :user_id, {presence: true}
    validates :area_id, {presence: true}
    validates :timeframe_id, {presence: true}
    def user
        return User.find_by(id: self.user_id)
    end
    belongs_to :user
    belongs_to :area
    belongs_to :timeframe
end
