class GradeSelectController < ApplicationController
  def index
    @grades =Grade.all.order(created_at: :asc) 
  end
end