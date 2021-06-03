class UserTask < ApplicationRecord
  STATUSES = [
    'To be done',
    'Done'
  ].freeze

  validates :status, inclusion: { in: STATUSES }

  belongs_to :user
  belongs_to :task

  scope :done, -> { where(status: 'Done') }
  scope :to_do, -> { where(status: 'To_be_done') }
end
