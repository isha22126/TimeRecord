class Grade < ApplicationRecord
  has_many :students

  def full_name
    "#{grade_name}年#{class_name}組"
  end
end
