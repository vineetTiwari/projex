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
            redirect_to project_path
            # redirect_to @project
        else
          render 'new'
        end

  end



end
