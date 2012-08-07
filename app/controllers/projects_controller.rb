
class ProjectsController < ApplicationController

  def create
    @project = Project.new(params[:project])
    @project.save
    flash[:notice] = "Project has been created."
    redirect_to @project
  end
  
  def index
    # TODO: implement index action
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

end

