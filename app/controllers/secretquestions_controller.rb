class SecretquestionsController < ApplicationController
  before_action :set_secretquestion, only: %i[ show edit update destroy ]

  # GET /secretquestions or /secretquestions.json
  def index
    @secretquestions = Secretquestion.all
  end

  # GET /secretquestions/1 or /secretquestions/1.json
  def show
  end

  # GET /secretquestions/new
  def new
    @secretquestion = Secretquestion.newgoodanswers(params[:nb])

  end

  # GET /secretquestions/1/edit
  def edit
@secretquestion.updatemyanswersnb
  end

  # POST /secretquestions or /secretquestions.json
  def create
    @secretquestion = Secretquestion.new(secretquestion_params)

    respond_to do |format|
      if @secretquestion.save
        format.html { redirect_to @secretquestion, notice: "Secretquestion was successfully created." }
        format.json { render :show, status: :created, location: @secretquestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @secretquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secretquestions/1 or /secretquestions/1.json
  def update
    respond_to do |format|
      if @secretquestion.update(secretquestion_params)
        format.html { redirect_to @secretquestion, notice: "Secretquestion was successfully updated." }
        format.json { render :show, status: :ok, location: @secretquestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @secretquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secretquestions/1 or /secretquestions/1.json
  def destroy
    @secretquestion.destroy
    respond_to do |format|
      format.html { redirect_to secretquestions_url, notice: "Secretquestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secretquestion
      @secretquestion = Secretquestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secretquestion_params
      params.require(:secretquestion).permit(:typeq, :text,:u, :answers_attributes=>{})
    end
end
