class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :tasks

  validates profil_status, presence :true,

  def profil_status
    if :status.present? && :status == "Fait"
      errors.add(:until_at, "Well done :)")
    end
  end
end
