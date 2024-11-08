class TeacherScheduleController < ApplicationController
  def show
    teacher_id = params[:id]
    @date = params[:date].to_date

    @teacher = Teacher.find(teacher_id)
    @schedules = Schedule.where(teacher_id: teacher_id, input: @date.beginning_of_month..@date.end_of_month).order(:input, :start)

  end
end