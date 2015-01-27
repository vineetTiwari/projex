class TasksController < ApplicationController

  def create
    @project=Project.find(params[:project_id])
    @task=@project.tasks.new(params.require(:task).permit([:title, :body]))
    if @task.save
    redirect_to @project, notice: "Task created!"
    else
    flash.now[:alert] = "Something went wrong. try again please!"
    redirect_to @project
    end
  end

end
