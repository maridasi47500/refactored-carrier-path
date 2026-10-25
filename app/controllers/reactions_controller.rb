class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[ show edit update destroy ]

  # GET /reactions or /reactions.json
def jsonreactions
@reactions=Reaction.mybestreactions(params[:name])
render json: @reactions
end
def json
@reactions=Reaction.findbyname2(params[:name])
render json: @reactions
end
  def mypeople
    @people=Person.where(id: params[:id])
    @field=params[:field]
    render layout: false
  end

  def index
      @reactions=Reaction.bypage(params[:page].to_i)

  end
  def updatethisreaction
    @reaction = Reaction.find(params[:id])
    @reaction.update(updated_at: DateTime.now)
    if params[:people]
    @reaction.surnames.each_with_index do |x,i| 
      t=x.name.strip.squish
        @people=Person.where('lower(name) like ?',"%#{t.downcase.gsub(' ','%')}%")
    if @people.length > 0
      @reaction.reactivepeople[i].person ||= @people[0]
      @reaction.reactivepeople[i].save
    end
    end
    end

  end

  # GET /reactions/1 or /reactions/1.json
  def show
    @p = @reaction.reactivepeople.pluck(:id)
    
    @collections = Collection.all.left_joins(:people).where('people.id' => @p).distinct.select('collections.*')
  end

  # GET /reactions/new
  def new
    @reaction = Reaction.new
    nb= params[:number]
    @myreaction = params[:reactionid] || @reaction.guessreactionid
    if nb
      nb.to_i.times do
        @reaction.reactivepeople.new(surname: Surname.new, profilepic: Profilepicture.new)
      end
    end
  end

  # GET /reactions/1/edit
  def edit
    @myreaction = params[:reactionid] || @reaction.guessreactionid

  end

  # POST /reactions or /reactions.json
  def create
    @reaction = Reaction.new(reaction_params)

    respond_to do |format|
      if @reaction.save
        format.html { redirect_to @reaction, notice: "Reaction was successfully created." }
        format.json { render :show, status: :created, location: @reaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reactions/1 or /reactions/1.json
  def update
    respond_to do |format|
      if @reaction.update(reaction_params)
        format.html { redirect_to @reaction, notice: "Reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reactions/1 or /reactions/1.json
  def destroy
    @reaction.destroy
    respond_to do |format|
      format.html { redirect_to reactions_url, notice: "Reaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
      if !@reaction.speaker
        @reaction.speaker=PostsSurname.new(surname: Surname.new, profilepic: Profilepicture.new)
      end
    end

    # Only allow a list of trusted parameters through.
    def reaction_params
      params.fetch(:reaction,{}).permit(:emotion_id,:reaction_id,:groupby,:surname,:name,:opposite,:reactingperson_ids=>[],:speaker_attributes=>{},:reactivepeople_attributes=>{})
    end
end
