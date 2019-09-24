class User < ApplicationRecord
  has_and_belongs_to_many :tasks

  def self.create_from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.image_url = auth.info.image
    end
  end
end
