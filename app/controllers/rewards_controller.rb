class RewardsController < ApplicationController
  def create
    @reward = Reward.new
  end

  def new
    @reward = Reward.new
  end

  def index
    @rewards = Reward.all
  end

  def edit
    @reward = Reward.find(params[:id])
  end

  def update

    if @reward.save
      redirect_to project_path(@reward.project.id)
    else
      render :edit
    end
  end

  def destroy

    
  end
end
