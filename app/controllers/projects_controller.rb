class ProjectsController < ApplicationController
      before_action :authenticate_user!, :only => [:new]



  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create

    # render :text =>params[:project]
     @project = Project.new(params.require(:project).permit(:title, :body))
     @project.user=current_user

        if  @project.save
            flash[:notice] = "Project successfully created"
            redirect_to projects_path
            # redirect_to @project
        else
          render 'new'
        end
  end

  def show

    @project = Project.find(params[:id])
    @task = @project.tasks.new
    @tasks= @project.tasks.all

  end

  def edit
    @project = Project.find(params[:id])
  end




end
