class Teacher < ApplicationRecord
  belongs_to :room
  has_many :schedules

  validates :name, presence: true
  validates :kana, presence: true
  validates :mail, presence: true
  validates :pw, presence: true
  
  validates :mail, uniqueness: true

 end
