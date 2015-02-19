class ProjectsController < ApplicationController
      before_action :authenticate_user!, :only => [:new]

  def index
    @projects = Project.order("created_at DESC").paginate(:page => params[:page])
    # @posts = Project.paginate(:page => params[:page])
  end

  def new
    @project = Project.new
  end

  def create
    # render :text =>params[:project]
   @project = Project.new(params.require(:project).permit(:title, :body))
   @project.user=current_user
    if  @project.save
        redirect_to projects_path
        # redirect_to @project
    else
        render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
    @task = @project.tasks.new
    @tasks= @project.tasks.order("created_at DESC")
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project =Project.new(params.require(:project).permit(:title, :body))
    @project.user=current_user
      if  @project.save
          redirect_to projects_path
      else
          render 'edit'
      end
  end

  def destroy
    @project=Project.find(params[:id])
    if  @project.destroy
        redirect_to projects_path
    else
        render 'delete'
    end
  end

end
