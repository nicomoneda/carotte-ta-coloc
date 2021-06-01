class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :tasks

  validates task_status, presence: :true

  def task_status
    if :status.present? && :status == "Fait"
      errors.add(:until_at, "Well done :)")
    end
  end
end
