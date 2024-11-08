class LoginController < ApplicationController

  def index
    @login = Teacher.new
  end

  def create
    @login = Teacher.new(teacher_params)
    
    teacher = Teacher.find_by(mail: @login.mail, pw: @login.pw)
    student = Student.find_by(mail: @login.mail, pw: @login.pw)
    
    if teacher
      # 教員ログイン
      redirect_to teacher_home_path
    elsif student
      # 生徒ログイン
      redirect_to teacher_select_path
    else
      render :index
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:mail, :pw)
  end

end