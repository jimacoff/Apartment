class CpanelController < ApplicationController
	 before_action :find_user, only: [:new, :show, :edit, :update, :destroy]
  def index

  	@users = User.all.includes(:properties)
  	
  end

  def edit
  end

  def destroy
  	@user.destroy
    redirect_to cpanel_index_path
  end

  def show
  	
  end

  private
  
  def find_user
  	@user = User.find(params[:id])
  end
end
