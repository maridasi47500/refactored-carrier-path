class TaskactionsController < ApplicationController
  before_action :set_taskaction, only: %i[ show edit update destroy ]
layout false, only: [:thingstoknow]
def thingstoknow
@categorythings=Categorything.findbyid(params[:id])
end
def json
@t=Taskaction.findbyname(params[:name])
render json: @t
end
  # GET /taskactions or /taskactions.json
  def index
    @taskactions = Taskaction.all
  end

  # GET /taskactions/1 or /taskactions/1.json
  def show
  end

  # GET /taskactions/new
  def new
    @taskaction = Taskaction.new
  end

  # GET /taskactions/1/edit
  def edit
  end

  # POST /taskactions or /taskactions.json
  def create
    @taskaction = Taskaction.new(taskaction_params)

    respond_to do |format|
      if @taskaction.save
        format.html { redirect_to @taskaction, notice: "Taskaction was successfully created." }
        format.json { render :show, status: :created, location: @taskaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @taskaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskactions/1 or /taskactions/1.json
  def update
    respond_to do |format|
      if @taskaction.update(taskaction_params)
        format.html { redirect_to @taskaction, notice: "Taskaction was successfully updated." }
        format.json { render :show, status: :ok, location: @taskaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @taskaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskactions/1 or /taskactions/1.json
  def destroy
    @taskaction.destroy
    respond_to do |format|
      format.html { redirect_to taskactions_url, notice: "Taskaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskaction
      @taskaction = Taskaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taskaction_params
      params.require(:taskaction).permit(:image,:name_fr, :name_en, :name_de,:categorything_ids=>[])
    end
end
