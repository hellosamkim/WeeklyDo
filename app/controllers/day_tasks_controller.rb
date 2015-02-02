  class DayTasksController < ApplicationController
  before_action :set_day
  before_action :set_todo_item, except: [:create]

  def create
    @day_task = @day.day_tasks.create(day_task_params)
    redirect_to @day
  end

  def destroy
    if @day_task.destroy
      flash[:sucess] = "Task was deleted"
    else
      flashp[:error] = "Task could not be deleted"
    end
    redirect_to @day
  end

  def finished
    @day_task.update_attribute(:finished_at, Time.now)
    redirect_to @day, notice: "Task finished"
  end

  private
    def set_day
      @day = Day.find(params[:day_id])
    end

    def set_todo_item
      @day_task = @day.day_tasks.find(params[:id])
    end

    def day_task_params
      params.require(:day_task).permit(:task)
    end
end
