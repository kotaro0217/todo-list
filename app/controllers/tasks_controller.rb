class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(text: params[:text])
    redirect_to root_path
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path
  end

  def edit
    task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update(text: params[:text])
      redirect_to root_path
    else
      render :edit
    end
  end
end
