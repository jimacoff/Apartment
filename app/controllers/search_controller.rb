class SearchController < ApplicationController

  def index	
  	@properties = Property.where(["LOWER(name) LIKE ? OR LOWER(address) LIKE ? OR LOWER(content) LIKE ?", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
  	@flats = Flat.where(["LOWER(name) LIKE ?","%#{params[:search]}%"])
  end
end
