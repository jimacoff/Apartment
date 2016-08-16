class FlatsController < ApplicationController
  def create 
    @property = Property.find(params[:property_id])
    @flat = @property.flats.build(flats_params)
    @flat.user = current_user
    @flat.save

    redirect_to properties_url
  end

  def destroy
    @property = Property.find (params[:property_id])
    @flat = @property.flats.find(params[:id]).destroy
    redirect_to properties_url
  end

  private

    def flats_params
      params.require(:flat).permit(:content)  
    end
  end