  class DayTasksController < ApplicationController
  before_action :set_day

  def create
    @day_task = @day.day_tasks.create(day_task_params)
    redirect_to @day
  end

  private
    def set_day
      @day = Day.find(params[:day_id])
    end

    def day_task_params
      params.require(:day_task).permit(:task)
    end
end
