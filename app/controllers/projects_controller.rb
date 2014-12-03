class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.enw

    if @project.save?
      redirect_to project_path
    else
      render :new, alert: 'There was an error'
    end
  end

  def edit
  end

  def delete
  end

  def destroy
  end
end
