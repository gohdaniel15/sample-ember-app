class Api::ProjectsController < ApplicationController

  def index
    @projects = Project.all.order(created_at: :desc)
    render json: @projects, include: ['project_images']
  end

end
