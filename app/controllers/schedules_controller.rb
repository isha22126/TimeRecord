class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  # GET /schedules or /schedules.json
  def index
    teacher_id = login_teacher.id
    @schedules = Schedule.where(teacher_id: teacher_id).order(:start)
  end

  # GET /schedules/1 or /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules or /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.teacher_id = login_teacher.id
    @schedule.start = Time.zone.parse(@schedule.input.strftime("%Y-%m-%d " ) + @schedule.start.strftime("%H:%M" ))
    @schedule.finish = Time.zone.parse(@schedule.input.strftime("%Y-%m-%d " ) + @schedule.finish.strftime("%H:%M" ))
    if @schedule.save
        redirect_to @schedule, notice: "作成に成功しました。"
    else
      render :new, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /schedules/1 or /schedules/1.json
  def update
    @schedule.teacher_id = login_teacher.id

    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: "Schedule was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /schedules/1 or /schedules/1.json
  def destroy
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_path, status: :see_other, notice: "削除に成功しました。" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:teacher_id, :input, :start, :finish)
    end
end
