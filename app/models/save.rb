class Save < ApplicationRecord

  belongs_to :event
  
  belongs_to :user

  belongs_to :trip

  def book
    self.update(booked: true)
  end

  def cancel
    self.update(booked: false)
  end

end
