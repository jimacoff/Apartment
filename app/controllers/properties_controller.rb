class PropertiesController < ApplicationController
  
  before_action :find_property, only: [:show, :edit, :update, :destroy]
  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
   
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  

  # GET /properties/1/edit
  def edit
     authorize! :update, @property
  end

 

  # POST /properties
  # POST /properties.json
  def create
    @user = current_user
    @property = @user.properties.build(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @flats = Flat.where property_id: @property
    @flats.destroy_all
    @property.destroy
    
   
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def find_property
       @property = Property.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:content, :name, :address)
    end
end