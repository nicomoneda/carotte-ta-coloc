class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :tasks

  def task_status
    if :status.present? && :status == "Fait"
      errors.add(:until_at, "Well done :)")
    end
  end
  
  validates task_status, presence: :true

end
