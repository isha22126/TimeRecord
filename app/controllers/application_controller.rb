class ApplicationController < ActionController::Base
  helper_method :login_teacher

  def login_teacher
    Teacher.find(session[:login_teacher_id])
  end

  def set_login_teacher(teacher)
    session[:login_teacher_id] = teacher.id
  end

end
