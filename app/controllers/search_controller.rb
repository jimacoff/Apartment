class SearchController < ApplicationController

  def index	
  	@properties = Property.where(["name LIKE ? OR address LIKE ? OR content LIKE ?", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
  	@flats = Flat.where(["name LIKE ?","%#{params[:search]}%"])
  end
end
