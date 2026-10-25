class TvseriesController < ApplicationController
  before_action :set_tvseries, only: %i[ show edit update destroy editroles ]
layout false, only: [:actors]

  def jeudesacteurs
@acteur=Tvserieshaveactor.joins(:surname).select('surnames.*,tvserieshaveactors.*').where.not(surnames:{name: ['',nil]}).sample
@nbacteurs=14
@acteurs1=Tvserieshaveactor.joins(:surname).select('surnames.*,tvserieshaveactors.*').where.not(surnames:{name:[nil,'']}, person_id:@acteur.person_id).sample(@nbacteurs)
@acteurs=@acteurs1+Tvserieshaveactor.where(id: @acteur.id)
    
  end
  def acteurs
    if params['actor'+params[:acteur_id]+'.x']
redirect_to jeudesacteurs_tvseries_index_path, notice: t('display.bravooncemore')

    else
@acteur=Tvserieshaveactor.find(params[:acteur_id])
@nbacteurs=(params[:nbacteurs].to_i - 1)
acteurchoisi=Tvserieshaveactor.all.ids.map {|x| [params["actor#{x}.x"],x]}.select{|x|x[0]}[0][1]

@acteurs1=Tvserieshaveactor.where(id: params[:someactor].split(',')).where.not(id: acteurchoisi).sample(@nbacteurs)
@acteurs=@acteurs1+Tvserieshaveactor.where(id: @acteur.id)
    if @acteurs.length == 1
redirect_to jeudesacteurs_tvseries_index_path, notice: t('display.failmore')
    end
    end
  end
  # GET /tvseries or /tvseries.json
  def editroles
  end
  def actors
    @people = Person.findbyid(params[:id])
  end
  def index
    @tvseries = Tvseries.all
  end

  # GET /tvseries/1 or /tvseries/1.json
  def show
  end

  # GET /tvseries/new
  def new
    @tvseries = Tvseries.new
  end

  # GET /tvseries/1/edit
  def edit
  end

  # POST /tvseries or /tvseries.json
  def create
    @tvseries = Tvseries.new(tvseries_params)

    respond_to do |format|
      if @tvseries.save
        format.html { redirect_to @tvseries, notice: "Tvseries was successfully created." }
        format.json { render :show, status: :created, location: @tvseries }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tvseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tvseries/1 or /tvseries/1.json
  def update
    respond_to do |format|
      if @tvseries.update(tvseries_params)
        format.html { redirect_to @tvseries, notice: "Tvseries was successfully updated." }
        format.json { render :show, status: :ok, location: @tvseries }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tvseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tvseries/1 or /tvseries/1.json
  def destroy
    @tvseries.destroy
    respond_to do |format|
      format.html { redirect_to tvseries_index_url, notice: "Tvseries was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tvseries
      @tvseries = Tvseries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tvseries_params
      params.require(:tvseries).permit(:name_fr,:name_en,:name_de, :description, :image,:addanactor,:actor_ids=>[],:tvserieshaveactors_attributes=>{})
    end
end
