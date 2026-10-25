class CurrentjoboffersController < ApplicationController
  before_action :set_currentjoboffer, only: %i[ show edit update destroy ]

  layout false, only: [:person, :field, :job, :place]
  # GET /sectors or /sectors.json
  def person
    @k=Person.findbyid(params[:id])
  end
  def field
    @k=Field.findbyid(params[:id])
  end
  def job
    @k=Job.findbyid(params[:id])
  end
  def place
    @k=Place.findbyid(params[:id])
  end

  # GET /currentjoboffers or /currentjoboffers.json
  def index
    @currentjoboffers = Currentjoboffer.all
  end

  # GET /currentjoboffers/1 or /currentjoboffers/1.json
  def show
  end

  # GET /currentjoboffers/new
  def new
    @currentjoboffer = Currentjoboffer.new(post_id: params[:postid])
  end

  # GET /currentjoboffers/1/edit
  def edit
  end

  # POST /currentjoboffers or /currentjoboffers.json
  def create
    @currentjoboffer = Currentjoboffer.new(currentjoboffer_params)

    respond_to do |format|
      if @currentjoboffer.save
        format.html { redirect_to @currentjoboffer, notice: "Currentjoboffer was successfully created." }
        format.json { render :show, status: :created, location: @currentjoboffer }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @currentjoboffer.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /currentjoboffers/1 or /currentjoboffers/1.json
  def update
    respond_to do |format|
      if @currentjoboffer.update(currentjoboffer_params)
        format.html { redirect_to @currentjoboffer, notice: "Currentjoboffer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @currentjoboffer }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @currentjoboffer.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /currentjoboffers/1 or /currentjoboffers/1.json
  def destroy
    @currentjoboffer.destroy!

    respond_to do |format|
      format.html { redirect_to currentjoboffers_path, notice: "Currentjoboffer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentjoboffer
      @currentjoboffer = Currentjoboffer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def currentjoboffer_params
      params.expect(currentjoboffer: [ :largepic, :smallpic, :place_id, :field_id, :type_de_contrat, :statut, :salaire_annuel, :annuel, :person_id, :temps_de_travail, :duree_du_contrat, :job_id, :post_id, :description ])
      
    end
end
