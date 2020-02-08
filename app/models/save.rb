class Save < ApplicationRecord

  belongs_to :event
  
  belongs_to :user

  belongs_to :trip

end
