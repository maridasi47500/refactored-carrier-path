class AttitudesController < ApplicationController
  before_action :set_attitude, only: [:show, :edit, :update, :destroy]

  # GET /attitudes
  # GET /attitudes.json

  def index
    @attitudes = Attitude.all
  end

  # GET /attitudes/1
  # GET /attitudes/1.json
  def show
  end

  # GET /attitudes/new
  def new
    @attitude = Attitude.new
  end

  # GET /attitudes/1/edit
  def edit
  end
  def attitudejson
    @attitudes=Attitude.findbyname(params[:name])
    render json: @attitudes
  end
  def myfollowers
    @people=Person.find1pplbyid(params[:id])
    render layout: false
  end
  def mysailors
    @people=Person.find1pplbyid(params[:id])
    render layout: false
  end

  # POST /attitudes
  # POST /attitudes.json
  def create
    @attitude = Attitude.new(attitude_params)

    respond_to do |format|
      if @attitude.save
        format.html { redirect_to @attitude, notice: 'Attitude was successfully created.' }
        format.json { render :show, status: :created, location: @attitude }
      else
        format.html { render :new }
        format.json { render json: @attitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attitudes/1
  # PATCH/PUT /attitudes/1.json
  def update
    respond_to do |format|
      if @attitude.update(attitude_params)
        format.html { redirect_to @attitude, notice: 'Attitude was successfully updated.' }
        format.json { render :show, status: :ok, location: @attitude }
      else
        format.html { render :edit }
        format.json { render json: @attitude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attitudes/1
  # DELETE /attitudes/1.json
  def destroy
    @attitude.destroy
    respond_to do |format|
      format.html { redirect_to attitudes_url, notice: 'Attitude was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attitude
      @attitude = Attitude.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attitude_params
      params.fetch(:attitude, {}).permit(:didit, :name,:image,:description,:sailor_ids=>[],:amateur_ids=>[])
    end
end
