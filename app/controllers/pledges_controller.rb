class PledgesController < ApplicationController

  def create

  	@pledge = Pledge.new(pledge_params)
  	@pledge.backer = current_user

  	if @pledge.save
      response.headers['X-Message'] = "You've successfully made a pledge"
    else
      response.headers['X-Message'] = "Failed to create pledge"
    end

  	respond_to do |format|
  		format.js {}
  	end
  end

  private 

  def pledge_params
  	params.require(:pledge).permit(:amount, :project_id)
  end
  
end
