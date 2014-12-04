class ProjectsController < ApplicationController
  helper_method :days_left

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    # @project.rewards.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to project_path(@project.id)
    else
      render :new, alert: 'There was an error'
    end
  end

  def edit
  	@project = Project.find(params[:id])
  end
  def update
  	@project = Project.find(params[:id])

  	if @project.update(project_params)
  		redirect_to project_path(@project)
  	else
  		render :edit
  	end
  end

  def delete
  end

  def destroy
  end

  private

  def days_left
    days = (@project.end_date - @project.start_date)
    (days / 86400).round
  end

  def project_params
  	params.require(:project).permit(:name, :funding_goal, :description, 
                                    :start_date, :end_date, :owner_id, 
                                    rewards_attributes: [:amount, :backer_limit, :description])
  end
end









