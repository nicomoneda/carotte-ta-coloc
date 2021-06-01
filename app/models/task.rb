class Task < ApplicationRecord
  belongs_to :coloc

  validates :name, presence: true
  validates :description, presence: true
  validates_inclusion_of :points, :inclusion => 1..100
  validates :points, presence: true
  validates :carotte_card_description, presence: true
  validates :carotte_card_points, presence: true
  validates_inclusion_of :carotte_card_points, :inclusion => 1..100
end
