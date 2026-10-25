class PeopleController < ApplicationController
    before_action :set_person, only: [:newsurname,:cestmoi,:addprofilepic, :defaultprofilepic, :show, :edit, :update, :destroy, :events, :tasks,:jingles,:posts,:wikipedia,:youtube,:schedule,:socialnetwork,:blog,:villedeqn,:cherchersaville]


    before_action :pagination, only: [:index]
layout false, only: [:dreamjobs,:compar1,:sosies,:villedeqn]
def coloc1
end
def coloc2
                @person=Person.find((Person.all.ids.map {|x| [params["#{x}person.x"],x]}.select{|x|x[0]}[0][1] rescue nil))

end
def coloctask
                @person=Person.find(params[:mypersonid])
                @otherperson=Person.find((Person.all.ids.map {|x| [params["#{x}person.x"],x]}.select{|x|x[0]}[0][1] rescue nil)) rescue Person.find(params[:myotherpersonid])
@k=Colocataire.find_by(person: @person, otherperson: @otherperson) || Colocataire.find_by(person: @otherperson, otherperson: @person)
if !@k
@k=Colocataire.create(person: @person, otherperson: @otherperson)


end
                @task=Task.find((Task.all.ids.map {|x| [params["#{x}task.x"],x]}.select{|x|x[0]}[0][1] rescue nil)) rescue nil
if @task
Colocataireshavetask.find_or_create_by(task:@task, colocataire: @k)
end

end
def cherchersaville
end
def villedeqn
end
 def addstudentsroute
@epoch=Epoch.find(params[:epoch_id])
@grade=Grade.find(params[:grade_id])
int=Person.all.ids.map {|x| [params["#{x}person.x"],x]}.select{|x|x[0]}[0][1]
@person=Person.find(int)
Epochstudent.create(epoch:@epoch,grade:@grade,person:@person)
redirect_to addstudents_epoch_grade_people_path(grade_id: @grade.id,epoch_id:@epoch.id),notice: I18n.t('showpage.epoch.epochstudent', sailor: @person.name, grade: @grade.name)
end
 def addstudents
@epoch=Epoch.find(params[:epoch_id])
@grade=Grade.find(params[:grade_id])

end
def deleteasailorfromtask
@q=Sailorjob.find(params[:id])
@q.destroy
redirect_to @q.sailor

end
def sosies
@people=Person.findbyid(params[:id])
end
def datebirthjson
@p=Person.findbynamedatebirth(params[:name])
render json: @p
end
def compar1
@people=Person.findbyid(params[:id])
end
def dreamjobs
@jobs=Job.findbyid(params[:id])
end
def blog
end
def monblogaudio
end
def othersocialnetwork
if params[:voitureid].to_s != ''
@person.peoplecars.create(user:current_user, car_id: params[:voitureid])
redirect_to @person, notice: "Sa voiture est belle."
elsif params['aime1.x'] || params['aime2.x'] || params['aime3.x']|| params['aime4.x']|| params['aime5.x']

int=(1..5).map {|x| [params["aime#{x}.x"],x]}.select{|x|x[0]}[0][1]
if params[:personid]
@person.inloves.create!(otherperson_id: params[:personid],user:current_user, intensity: int)
else
@person.peoplelike.create!(user:current_user, intensity: int)
end
redirect_to @person, notice: "Vous l'aimez bien ?"
elsif params['lgbt.x']
@person.lgbtgens << [current_user]
redirect_to @person, notice: "Voici une personne de la communauté lgbt."
elsif params['car.x']
@person.voituregens << [current_user]
redirect_to @person, notice: "Voici une voiture."
elsif params['robot.x']
@person.robotgens << [current_user]
redirect_to @person, notice: "Voici un robot."
elsif params['believer.x']
@person.croyantgens << [current_user]
redirect_to @person, notice: "Il/elle va à l'église."
elsif params['aimepas.x']
@person.aimepasgens << [current_user]
redirect_to @person, notice: "Vous ne l'aimez pas ?"
elsif params['saved.x']
@person.sauvegens << [current_user]
redirect_to @person, notice: "Il (elle) est sauve(e)"

  end
rescue ActiveRecord::RecordInvalid
render :opinion
rescue ActiveModel::MissingAttributeError

render :opinion

end
def socialnetwork

if params['aime1.x'] || params['aime2.x'] || params['aime3.x']|| params['aime4.x']|| params['aime5.x']

int=(1..5).map {|x| [params["aime#{x}.x"],x]}.select{|x|x[0]}[0][1]
if params[:personid]
@person.inloves.create!(otherperson_id: params[:personid],user:current_user, intensity: int)
else
@person.peoplelike.create!(user:current_user, intensity: int)
end
elsif params['lgbt.x']
@person.lgbtgens << [current_user]
elsif params['car.x']
@person.voituregens << [current_user]
elsif params['rbs.x']
@person.braceletgens << [current_user]
elsif params['robot.x']
@person.robotgens << [current_user]
elsif params['believer.x']
@person.croyantgens << [current_user]
elsif params['aimepas.x']
@person.aimepasgens << [current_user]
elsif params['saved.x']
@person.sauvegens << [current_user]
elsif params[:voitureid].to_s != ''
@person.peoplecars.create(user:current_user, car_id: params[:voitureid])

  end
render :opinion
rescue ActiveRecord::RecordInvalid
render :opinion
rescue ActiveModel::MissingAttributeError

render :opinion

end
  def myalias2
@people=Person.find1pplbyid(params[:id])
    render layout: false
  end
  def personjson
@people=Person.find1ppl(params[:name])
    render json: @people.as_json, layout: false
  end

def mypics
      @profilepictures=Profilepicture.withid(params[:id])
render layout: false
end


    def mysurname2
      @people=PostsSurname.surnameswithid(params[:id])
      render layout: false

    end
    def mysurname
      @people=PostsSurname.surnameswithid(params[:id])

      render partial: "posts_surnames/mypostssurnamesother", collection:  @people,as: :person, layout: false

    end
    def newsurname
    end
    def cestmoi
      
    end
    def chercherparnom
      p Person
      @people=Person.bynameorcollection(params[:name],params[:colid])
      render layout: false
    end
    def mytasks
      @post = Post.new
      @post.setoftasks.new
      @person = Person.find(params[:id]) rescue nil
      p @person
      @setoftask = Setoftask.find(params[:mysetoftaskid]) rescue Setoftask.new
      @postlikecomment = !@setoftask.new_record? ? @setoftask.postlikecomments[0] : Postlikecomment.new
      @tasks = !@setoftask.new_record? ? @setoftask.tasks : Task.where(id: params[:taskid])
      render layout: false
    end
    def mytask
      @post = Post.new
      @sot=Setoftask.find(params[:sot_id]) rescue Setoftask.new || Setoftask.new
      
      @tasks = Task.where(id: params[:taskid])
      @sot.tasks = (@tasks +@sot.tasks).uniq
      render layout: false
    end
    def mysailor
      @post = Post.new

      @people = Task.find(params[:taskid]).sailors
      render layout: false
    end
    def myattitude
      @post = Post.new
      render layout: false
    end
    def index
@g=params[:page].to_i
      #@people=Person.all.joins(:collections).group_by {|x| x['collections.name']}
@people=Person.all.bypage(params[:page].to_i)
    end

    def addprofilepic
      profilepic = Profilepicture.new
      render locals: {profilepicture: profilepic}
    end
    def defaultprofilepic
      @person.update(myprofilepic_id: nil)
      redirect_to @person
      
    end
    def schedule
      @newschedule=@person.scheduledtasks.new()
      
    end
    def actualiserlalistedespersonnes
      
      	respond_to do |format|
		format.js { render :actualisernewpeople }
	    end

    end
    def youtube
	respond_to do |format|
		format.html
		format.js
	    end
    end
    def wikipedia
      @edit=params[:edit]
      @wikipedia_page=@already_exists = @person.wikipedia_page 
      if !@already_exists
      @new=WikipediaPage.new(person:@person)

      3.times { @new.photos.new}
      end
      render :wikipedia, layout: 'wikipedia'
    end
    def posts
      #@posts = Post.personid(@person.id)
      @allposts=@posts = Post.joins(:usurpations).where(people: {id:@person.id})+Post.joins(:commentedpeopleinputs).where(people: {id:@person.id})+Post.joins(:reactingpeople).where(people: {id:@person.id})+Post.joins(:commeelles).where(people: {id:@person.id})+Post.joins(:destinataires).where(people: {id:@person.id})+Post.joins(:hackedpeople).where(people: {id:@person.id})
      @posts=Post.where(id:@posts.pluck(:id)).each_slice(3).to_a

      #@posts=@posts.distinct
      
    end

  def new
    @person = Person.new
if params[:ajax]
render layout: false
end
    respond_to do |format|
        format.html
        format.js
    end
  end

  
  def show
    @post=Post.new
    @post.posts_surnames.new(person: @person,surname:Surname.new,place:Place.new,thing:Thing.new)
    @postssurnamedisplay = PostsSurname.joins(:post).where(posts: {usurpations: @peoplesearched})
    @peoplesearched=Person.where(id:session[:collection])
    @moussaillons =Person.where(id:session[:collection])
    @tasks=@person.myfavtasks
    @postsaproposdelui = Post.joins(:postsaproposdelles).where('people.id',@person.id)
    @persontasksposts = @person.postsabouttasks.joins(:actions).select('posts.*, events.name as taskname').distinct.group_by {|x| x.taskname}
    @pagefacebook = Nokogiri::HTML(URI.open(@person.myfacebookpage))
  rescue

  end
  def create
@person = Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def aliasperson
    @person = Person.find(params[:id])

    if confirm && confirm.to_i > 0
      begin
        current_user.aliases << @person
      rescue ActiveRecord::RecordInvalid
      end
      redirect_to @person, notice: 'Cette personne a été ajoutée comme étant vous.' 
    end
    if otheralias && otheralias.to_i > 0
      @otheralias = true
    end
    if person && otheralias.to_i > 0
      current_user.aliases << Person.find(person)
      @addedalias =true
    end
  end
  def events
    @event = Event.new
    render :events
  end
  def tasks
    @cid=params[:cid] ? Collection.find(params[:cid]) : Collection.first
        @ids=params[:ids] ? Person.where(id: params[:ids].split(',')) : nil
@hackedpeopletype = params[:hpt] || nil




    @task ||= Task.new(sailors:[@person])
    respond_to do |format|
if @person.collections[0]

      format.html
      format.js {render 'tasks/edit'}
else
format.html {redirect_to '/collections/new', notice: "Avez-vous déjà ajouté #{@person.name} à une collection ?"}
end
    end
  end
  def didonce
    @onetime = Onetime.find(params[:id])
    render locals: {onetime: @onetime}, layout: false
  end
  def addsomethingyoudidonce
    
    respond_to do |format|
        format.js 
    end
  end

  def update
    respond_to do |format|
      if params[:ajax] && @person.update(person_params)
        format.html { render partial: "posts_surnames/mypostssurnames", collection: @person.my_posts_surnames.take(1), as: :person, layout: false, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      elsif @person.update(person_params)
        format.html { redirect_to @person, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  def jingles
    if params[:githubaccount]
      @person.githubnew
    end
    if params[:twitteraccount]
      @person.twitternew
    end
     
    respond_to do |f|
      f.js 
      f.html
    end
  end
  private
  def set_person
        @person=Person.find(params[:id])
  end
  def confirm
    params[:confirm]
  end
  def otheralias
    params[:otheralias]
  end
  def person
    params[:person]
  end
  def person_params
         params.require(:person).permit(:size,:dateofbirth,:eyescolor,:colorhair,:sexe,:phonenumber,:nationality_id,:firstnames,:lastname,:city_id,:country_id,:facebook, :myprofilepic_id, :pronoun_id, :taskid, :description, :year,:month,:eventid,:name,:collection_id, :image,:profilepictures_attributes=>{},:tvserieshaveactors_attributes=>{},:onetimes_attributes=>{},:jingles_attributes=>{},:twitteraccounts_attributes=>{},:scheduledtasks_attributes=>{},:wikipedia_page_attributes=>{},:personaljingles_attributes=>{},:my_posts_surnames_attributes=>{},:githubaccounts_attributes=>{},:relatedtask_ids=>[],:relatedevent_ids=>[],:thisisjingles=>[],:jingles=>[],:usedprofilepicture_ids=>[],:place_ids=>[],:fact_ids=>[],:profilepic_ids=>[],:recordmyphrases=>[], :recordmynames=>[],:recordmyphrasesandwords=>[], :recordmywords=>[],:myownphrasesandwords=>[], :contentmyownphrasesandwords=>[], :myownwords=>[],:contentmyownwords=>[],  :recordmynames=>[],:myownsurnames=>[],:contentmyownsurnames=>[],:myownphrases=>[],:contentmyownphrases=>[],:dreamjob_ids=>[],:compar1_ids=>[],:sosie_ids=>[])





    
  end
      def pagination
              page=params[:page] || 0
        @nopage  = page.to_i
    margin=10
    @minpage= (5-@nopage) <= 5 && (5-@nopage) >= 0 ? 0 : (@nopage - 5)

    @pagination=(@minpage..@nopage+margin).to_a
    

    end


end
