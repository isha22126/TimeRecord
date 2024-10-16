class Student < ApplicationRecord
  belongs_to :grade
  has_many :attends
end
