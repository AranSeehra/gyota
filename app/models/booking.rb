class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :teacher

  validates :start_at, :end_at, presence: true
  validate :start_at_cannot_be_in_the_past, :end_at_cannot_be_before_end_at


  def start_at_cannot_be_in_the_past
    if start_at.present? && start_at < Date.today
      errors.add(:start_at, "can't be in the past")
    end
  end

  def end_at_cannot_be_before_end_at
    if end_at.present? && end_at < start_at
      errors.add(:end_at, "can't be before the start date")
    end
  end
end
