class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  
  def new
    @property = Property.find(params[:property_id])
  end

  def create 
    @property = Property.find(params[:property_id])
    @flat = @property.flats.build(flat_params)
    @flat.user = current_user
    @flat.save

    redirect_to property_path(@property)
  end

  def destroy
    @flat = Flat.find(params[:id]).destroy
    redirect_to property_path(@flat.property_id)
  end

  def show
  end
  
  def edit
      authorize! :update, @flat
  end

  def update
    @flat.update(flat_params)
    redirect_to property_path(@flat.property_id)
  end

  private

   
    def flat_params
      params.require(:flat).permit(:name, :content, :flat_nr, :caretaker, :join_date, :phone, :rooms, :email, :morepersons, :relatives)
    end

    def set_flat
       @flat = Flat.find(params[:id])
    end

    def set_property
      @property = Property.find(params[:property_id])
    end

  end