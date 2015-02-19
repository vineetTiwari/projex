class LikesController < ApplicationController
  before_action :authenticate_user!

  def create

    if user_signed_in?
      user = current_user
      project = Project.find(params[:project_id])
      @like = Like.new(project_id:project.id, user_id:user.id)

      if @like.save
        redirect_to project_path(project)
      else
        redirect_to project_path(project), :alert => "Sorry, you can't like something twice."
      end
    else
      project=Project.find(params[:project_id]);
      redirect_to project_path(project)
    end

  end


end
