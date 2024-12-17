class AttendanceListController < ApplicationController
  def show
    grade_id = params[:grade_id]
    @date = params[:date] || Date.today

    @grade = Grade.find(grade_id)
    
    @timetable = Timetable.find_by(grade_id: grade_id, input: @date) || Timetable.new

    @students = Student.where(grade_id: grade_id).order(:kana)
    student_id_list = @students.map(&:id)    

    attends = Attend.where(input: @date, student_id: student_id_list)
    @attends_hash = attends.inject(Hash.new) do |hash, attend|
      hash[attend.student_id] = attend
      hash
    end
  end

  def new
    student_id = params[:student_id]
    date = params[:date]
    @attend = Attend.new(student_id: student_id, input: date)

    @subject7 = Timetable.find_by(grade_id: @attend.student.grade_id, input: @attend.input).subject7
  end

  def create
    @attend = Attend.new(attend_params)
    if @attend.save
      redirect_to attendance_list_path(@attend.student.grade_id, @attend.input)
    else
      render :new
    end
  end

  def edit
    student_id = params[:student_id]
    @attend = Attend.find(student_id)

    @subject7 = Timetable.find_by(grade_id: @attend.student.grade_id, input: @attend.input).subject7
  end

  def update
    attend_id = params[:attend_id]
    @attend = Attend.find(attend_id)

    if @attend.update(attend_params)
      redirect_to attendance_list_path(@attend.student.grade_id, @attend.input)
    else
      render :edit
    end
  end

  def subject_new
    grade_id = params[:grade_id]
    date = params[:date]
    @timetable = Timetable.new(grade_id: grade_id, input: date)

    @subjects = Subject.all
  end

  def subject_create
    @timetable = Timetable.new(timetable_params)
    if @timetable.save
      redirect_to attendance_list_path(@timetable.grade_id, @timetable.input)
    else
      @subjects = Subject.all
      render :subject_new
    end
  end

  def subject_edit
    grade_id = params[:grade_id]
    date = params[:date]
    @timetable = Timetable.find_by(grade_id: grade_id, input: date)

    @subjects = Subject.all
  end

  def subject_update
    timetable_id = params[:timetable_id]
    @timetable = Timetable.find(timetable_id)

    if @timetable.update(timetable_params)
      redirect_to attendance_list_path(@timetable.grade_id, @timetable.input)
    else
      @subjects = Subject.all
      render :subject_edit
    end
  end

  def teacher_edit
    timetable_id = params[:timetable_id]
    @timetable = Timetable.find(timetable_id)
    @column_name = params[:column_name]
    if @timetable[@column_name].nil?
      @timetable[@column_name] = login_teacher.id
    end
    @teachers = Teacher.all
  end

  def teacher_update
    timetable_id = params[:timetable_id]
    @timetable = Timetable.find(timetable_id)
    if @timetable.update(teacher_params)
      redirect_to attendance_list_path(@timetable.grade_id, @timetable.input)
    else
      @column_name = params[:column_name]
      @teachers = Teacher.all
      render :teacher_edit
    end
  end

  private

  def attend_params
    params.require(:attend).permit(:input, :student_id, :hr_attend1, :hr_attend2, :attend1, :attend2, :attend3, :attend4, :attend5, :attend6, :attend7, :hr_comment1, :hr_comment2, :comment1, :comment2, :comment3, :comment4, :comment5, :comment6, :comment7)
  end

  def timetable_params
    params.require(:timetable).permit(:input, :grade_id, :subject_id1, :subject_id2, :subject_id3, :subject_id4, :subject_id5, :subject_id6, :subject_id7)
  end

  def teacher_params
    params.require(:timetable).permit(:hr_teacher_id1, :hr_teacher_id2, :teacher_id1, :teacher_id2, :teacher_id3, :teacher_id4, :teacher_id5, :teacher_id6, :teacher_id7)
  end


end