class Student < ApplicationRecord
  belongs_to :grade
  has_many :attends

  validates :name, presence: true
  validates :kana, presence: true
  validates :mail, presence: true
  validates :pw, presence: true

  validates :mail, uniqueness: true
end
