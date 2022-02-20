class User < ApplicationRecord
    # validates :id, presences: true

    def self.update_user
        user_data = MediumApi.fetch_user
        user = User.find_or_create_by(user_id: user_data["data"]["id"])
        user.update(photo: ["data"]["imageUrl"])
      end
end
