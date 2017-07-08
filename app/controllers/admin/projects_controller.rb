class Admin::ProjectsController < Admin::BaseController

  def index
    @projects = Project.all
  end

  def show
    @project = project
  end

  def new
    @project = Project.new
    @project_image = @project.project_images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to new_admin_project_path, flash: { success: 'Project successfully saved.' }
    else
      render :new
    end
  end

  def edit
    @project = project
  end

  def update
    @project = project
    if @project.update(project_params)
      redirect_to new_admin_project_path, flash: { success: 'Project successfully saved.' }
    else
      render :edit
    end
  end

  private

  def project
    Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:id, :title, :description, project_images_attributes: [:id, :filepicker_url, :_destroy], tags_attributes: [:id, :name, :_destroy])
  end

end
