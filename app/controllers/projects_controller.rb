class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @new_project = Project.new
    @new_project.tasks.build
    if project_with_template
      @template = Template.find(params[:template])
      @template.tasks.each do |task|
        @new_project.tasks << Task.new(description: task.description)
      end
      @new_project.name = @template.name
    end
    rescue ActiveRecord::RecordNotFound
      redirect_to :root
    return
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to :root
    end
  end

  private
  
  def project_params
    params.require(:project).permit(:name, tasks_attributes: [:id, :description, :_destroy])
  end

  def project_with_template
    params.permit(:template) if params.has_key?(:template)
  end
end
