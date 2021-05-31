class CarotteCard < ApplicationRecord
  belongs_to :user
  belongs_to :tasks

  validates until_at_cannot_be_in_the_past, presence :true,

  def expiration_date_cannot_be_in_the_past
    if :until_at.present? && :until_at < Date.today
      errors.add(:until_at, "can't be in the past")
    end
  end
end
