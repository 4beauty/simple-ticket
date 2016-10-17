class Ticket < ApplicationRecord
  belongs_to :department
  belongs_to :user, optional: true

  after_create :set_status

  def set_status
    self.status = "pending"
    self.save
  end

end
