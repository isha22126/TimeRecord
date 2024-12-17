class Schedule < ApplicationRecord
  belongs_to :teacher

  validate :datetime_check


  def datetime_check
    if start >= finish
      errors.add(:base, "終了時刻は開始時刻より後にしてください")
    end
  end

end
