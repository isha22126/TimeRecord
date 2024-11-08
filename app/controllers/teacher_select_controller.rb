class TeacherSelectController < ApplicationController
  def index
    @teachers = Teacher.all.order(created_at: :desc)
  end
  def search
    if params[:search].present? && params[:search][:name].present?
      @teachers = Teacher.where("name like '%#{params[:search][:name]}%'").order(created_at: :desc)
    else
      @teachers= Teacher.all.order(created_at: :desc)
    end
    render :index
  end

end