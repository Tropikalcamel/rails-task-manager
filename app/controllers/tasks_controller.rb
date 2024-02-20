class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end


  def destroy
    # @restaurant = Restaurant.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def check!
    complete = @task.completed!
  end
end
