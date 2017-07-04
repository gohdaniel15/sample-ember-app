class Admin::ProjectsController < Admin::BaseController

  def new
    @project = Project.new
    @project_image = @project.project_images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to new_admin_project_path, flash: { success: 'Project successfully saved.' }
    else
      redirect_to new_admin_project_path, flash: { error: 'Project save unsuccessful.' }
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, project_images_attributes: [:filepicker_url])
  end

end
