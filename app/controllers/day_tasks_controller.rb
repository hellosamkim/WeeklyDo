  class DayTasksController < ApplicationController
  before_action :set_day
  before_action :set_day_tasks, except: [:create]

  def create
    @day_task = @day.day_tasks.create(day_task_params)
    redirect_to @day
  end

  def destroy
    if @day_task.destroy
      flash[:sucess] = "Task was deleted"
    else
      flashp[:error] = "Task could not be deleted, please try again."
    end
    redirect_to @day
  end

  def finished
    @day_task.update_attribute(:finished_at, Time.now)
    flash.notice = "Task finished"
    redirect_to @day
  end

  private
    def set_day
      @day = Day.find(params[:day_id])
    end

    def set_day_tasks
      @day_task = @day.day_tasks.find(params[:id])
    end

    def day_task_params
      params.require(:day_task).permit(:task)
    end
end
