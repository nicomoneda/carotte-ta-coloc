class Task < ApplicationRecord
  belongs_to :coloc

  validates :name, presence: true
  validates :description, presence: true
  validates :points, inclusion: { in: (1..200) }
  validates :points, presence: true
  # validates :carotte_card_description, presence: true
  # validates :carotte_card_points, presence: true
  # validates :carotte_card_points, inclusion: { in: (1..200) }
end
