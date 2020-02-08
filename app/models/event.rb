class Event < ApplicationRecord

    belongs_to :experience

    has_many :saves, dependent: :destroy

end

