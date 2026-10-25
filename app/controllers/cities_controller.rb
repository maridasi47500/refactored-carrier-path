class CitiesController < ApplicationController
  before_action :set_city, only: %i[ show edit update destroy jobcity lookforcity addpeoplecity addthosepeoplecity]
  before_action :set_person, only: %i[ jobcity lookforcity ]
  before_action :set_epoch, only: %i[ addpeoplecity addthosepeoplecity ]
  before_action :set_peoplecity, only: %i[ addthosepeoplecity ]
layout false, only: [:lookforcity]

  # GET /cities or /cities.json
def addthosepeoplecity
@peoplecitiesepoch=Peoplecitiesepoch.find_or_create_by(people_city:@peoplecity, epoch:@epoch)
redirect_to person_city_epoch_path(person_id: @person.id, city_id:@city.id,id:@epoch.id)

end
def addpeoplecity
end
def lookforcity
end
def jobcity
PeopleCity.find_or_create_by(person: @person, city: @city)
end
def json
@a=City.findbyname(params[:name])
render json: @a
end
  def index
    @cities = City.all
  end

  # GET /cities/1 or /cities/1.json
  def show
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities or /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: "City was successfully created." }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1 or /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: "City was successfully updated." }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1 or /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: "City was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end
    def set_person
      @person = Person.find(params[:person_id]) rescue nil
    end
    def set_epoch
      @epoch = Epoch.find(params[:epoch_id]) rescue nil
    end
    def set_peoplecity
      @city = City.find(params[:id])
                @personid=Person.all.ids.map {|x| [params["#{x}person.x"],x]}.select{|x|x[0]}[0][1] rescue nil
                @person=Person.find(@personid)
           @peoplecity=PeopleCity.find_or_create_by(person_id:@personid,city:@city)
    end

    # Only allow a list of trusted parameters through.
    def city_params
      params.require(:city).permit(:name)
    end
end
