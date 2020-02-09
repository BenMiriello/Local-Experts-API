class User < ApplicationRecord
    has_secure_password

    has_many :favorites, dependent: :destroy
    has_many :favorited_experiences, through: :favorites, source: :experience

    has_many :saves, dependent: :destroy
    has_many :saved_experiences, through: :saves, source: :experience

    has_many :trips, dependent: :destroy
    
end
