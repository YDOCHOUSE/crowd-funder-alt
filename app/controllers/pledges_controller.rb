class PledgesController < ApplicationController
  def create

  	@pledge = Pledge.new(pledge_params)
  	@pledge.backer = current_user
  	@pledge.save

  	respond_to do |format|
  		format.js {}
  	end
  end

  private 

  def pledge_params
  	params.require(:pledge).permit(:amount, :project_id)
  end
  
end
