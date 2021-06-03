class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :coloc
  has_many :carotte_cards
  has_many :user_tasks

  has_many :tasks_to_do, -> { where(status: 'To be done') }, class_name: 'UserTask'
end