class Teacher < ApplicationRecord
  belongs_to :room
  has_many :Schedules
end
