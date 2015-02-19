class TasksController < ApplicationController
  before_action :authenticate_user!, :only => [:create]
  
  def create
    @project=Project.find(params[:project_id])
    @task=@project.tasks.new(params.require(:task).permit( [:title, :body] ))
    if @task.save
       redirect_to @project
    else
       redirect_to @project
    end
  end

  def destroy
    @project=Project.find(params[:project_id])
    @task=Task.find(params[:id])
    if @task.destroy
       redirect_to project_path(@project)
    else
       redirect_to project_path
    end

  end


end
