class PostflatsController < ApplicationController
	before_action :find_flat, only: [:destroy]
	before_action :find_property, only: [:destroy]

  def index
  	@user = User.find (params[:cpanel_id])
  	@flats = Flat.where user_id: @user 
    @addresses = Property.where id: @flats	
  end

  def edit
    authorize! :update, @flat
  end

  def destroy
    authorize! :destroy, @flat
  	@flat.destroy
  	redirect_to cpanel_postflats_path
  end

  private
  def find_flat
  	@flat = Flat.find(params[:id])
  end
  def find_property
  	@property = Property.find(params[:property_id])
  end

end
