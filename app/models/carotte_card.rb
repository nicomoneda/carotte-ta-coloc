class CarotteCard < ApplicationRecord
  belongs_to :user
  belongs_to :tasks

  validates expiration_week_on, presence: :true,

  def expiration_week_on
    if :week_on.present? && :week_on < Date.today
      errors.add(:week_on, "can't be in the past")
    end
  end
end
