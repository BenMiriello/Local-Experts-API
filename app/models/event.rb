class Event < ApplicationRecord

    belongs_to :experiencs

    has_many :saves, dependent: :destroy

end
