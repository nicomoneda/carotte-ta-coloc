class UserTask < ApplicationRecord
  belongs_to :user
  belongs_to :task

  scope :done, -> { where(status: true) }
  scope :to_do, -> { where(status: false) }

  scope :current_week, -> { where(week_on: Date.today.beginning_of_week) }
  scope :next_week, -> { where(week_on: Date.today.next_week) }

  validates :week_on, presence: true
  validates :week_on, uniqueness: { scope: :task }
end
