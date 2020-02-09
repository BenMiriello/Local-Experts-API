class Event < ApplicationRecord

    belongs_to :experience

    has_many :saves, dependent: :destroy
    
    # For some reason, these instance methods only worked after resetting the db. 
    # Just fyi if you want to add more. 
    # Add the method then run 'rails db:reset' and you should be all good.
    def name
        self.experience.name
    end

    def description
        self.experience.description
    end

    def quota
        self.experience.quota
    end

    def spots_left
        @spots_left = self.experience.quota
        if self.saves.count >= 1
            self.saves.each do |save|
                @spots_left -= save.guests
            end
        end
        @spots_left
    end

    def image
        self.experience.image
    end

    def host_name
        self.experience.host_name
    end

end

