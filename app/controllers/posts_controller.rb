class PostsController < ApplicationController
	before_action :find_property, only: [:destroy]
  def index
   
  	@user = User.find (params[:cpanel_id])
  	@properties = Property.where user_id: @user
  end

  def new
    authorize! :create, @property
  end

  def edit
    authorize! :update, @property
  end

  def destroy
    authorize! :destroy, @property
  	@property.destroy
  	redirect_to cpanel_posts_path
  end

  private

  def find_property
  	@property = Property.find(params[:id])
  end
end
