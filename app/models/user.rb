class User < ApplicationRecord
    has_secure_password

    has_many :favorites, dependent: :destroy
    has_many :favorited_experiences, through: :favorites, source: :experience

    # has_many :saves, dependent: :destroy
    # has_many :saved_experiences, through: :saves, source: :experience

    has_many :trips, dependent: :destroy

    def saves
        Save.where(user_id: self.id)
    end

    def saved_events
        self.saves.map { |save| save.event }
    end

    def saved_experiences
        self.saved_events.map { |event| event.experience }
    end
    
end

