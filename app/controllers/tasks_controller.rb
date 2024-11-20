class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = task.new(params[:task])
    @task.save
    redirect_to task_path(@task)
  end

  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def edit
    @task = task.find(params[:id])
  end

  def update
    @task = task.find(params[:id])
    @task.update(params[:task])
  end
end
