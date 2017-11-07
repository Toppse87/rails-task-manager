class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # Read all
  def index
    @tasks = Task.all
  end

  # Show one
  def show
    # @task = Task.find(params[:id])
  end

  # Add a Task
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # Update a task
  def edit
    # @task =  Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # Delete a task
  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end


end

