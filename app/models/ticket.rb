class Ticket < ApplicationRecord
  belongs_to :department
  belongs_to :user, optional: true

  after_create :set_status
  after_save :check_for_ticket_completion

  def set_status
    self.status = "pending"
    self.save
  end

  def check_for_ticket_completion
    if self.status_changed? && self.status == "completed"
      update_column(:completed_on, DateTime.now)
    end
  end

  def completed?
    self.status == "completed"
  end

end
