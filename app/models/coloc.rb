class Coloc < ApplicationRecord
  has_many :users
  has_many :tasks

  has_many :consommations, through: :users
  
  validates :name, presence: true
end
