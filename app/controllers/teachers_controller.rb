class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[ show edit update destroy ]

  # GET /teachers or /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1 or /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    @rooms = Room.all.order(:name)
  end

  # GET /teachers/1/edit
  def edit
    @rooms = Room.all.order(:name)
  end

  # POST /teachers or /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    
    if @teacher.save
      redirect_to @teacher, notice: "Teacher was successfully created."
    else
      @rooms = Room.all.order(:name)
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teachers/1 or /teachers/1.json
  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: "Teacher was successfully updated."
    else
      @rooms = Room.all.order(:name)
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /teachers/1 or /teachers/1.json
  def destroy
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to teachers_path, status: :see_other, notice: "Teacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:name, :mail, :pw, :room_id, :kana)
    end
end
