class Api::ProjectImagesController < ApplicationController

  def index
    @project_images = ProjectImage.all
    render json: @project_images
  end

  def show
    @project_image = ProjectImage.find(params[:id])
    render json: @project_image
  end

end
