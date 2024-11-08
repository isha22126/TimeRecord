class AttendanceListController < ApplicationController
  def show
    grade_id = params[:grade_id]
    date = params[:date] || Date.today
    @date = date

    @grade = Grade.find(grade_id)
    
    @timetable = Timetable.find_by(grade_id: grade_id, input: date)

    @students = Student.where(grade_id: grade_id).order(:kana)
    student_id_list = @students.map(&:id)    

    attends = Attend.where(input: date, student_id: student_id_list)
    @attends_hash = attends.inject(Hash.new) do |hash, attend|
      hash[attend.student_id] = attend
      hash
    end

    p @attends_hash
    
  end
  
  def edit
    student_id = params[:student_id]
    @attend = Attend.find(student_id)
  end

  def update
    attend_id = params[:attend_id]
    @attend = Attend.find(attend_id)

    if @attend.update(attend_params)
      redirect_to attendance_list_path(@attend.student.grade.id, @attend.input)
    else
      render :edit
    end
  end


  def subject_edit
  end

  private

  def attend_params
    params.require(:attend).permit(:hr_attend1, :hr_attend2, :attend1, :attend2, :attend3, :attend4, :attend5, :attend6, :attend7, :hr_comment1, :hr_comment2, :comment1, :comment2, :comment3, :comment4, :comment5, :comment6, :comment7)
  end


end