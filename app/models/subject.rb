class Subject < ApplicationRecord

  def disabled?
    name == "-"
  end
end
