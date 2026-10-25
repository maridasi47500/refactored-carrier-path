Rails.application.routes.draw do
  resources :currentjoboffers do
    collection do
      get 'json'
      get 'place'
      get 'job'
      get 'person'
      get 'field'
    end    
  end
  resources :people do 

    collection do
            get 'sailorclothing1'
            post 'sailorclothing2'
            post 'sailorwhatclothing'
            get 'coloc1'
            post 'coloc2'
            post 'coloctask'
            post 'mytaskcoloc'
            get "peoplehavetasks"
            post "peoplehavethattasks"
      delete 'deleteasailorfromtask'

get 'sosies'
            get "compar1"
            get "dreamjobs"
            get "monblogaudio"
            get "monblogaudio"
            get "personjson"
            get "myalias2"
            get "mysurname", as: :loadpostsurname, action: :mysurname
            get "mytasks"
            get "mytask"
            get "mysailor"
            get "myattitude"
            get "mysurname2", as: :loadpostsurnames, action: :mysurname2
            get "mypics"
            get "datebirthjson"

            get 'villedeqn'
            get 'chercherlavilledeqn'


    end
    resources :cities do
      resources :epochs do
      collection do
            get 'whatepoch'
      end
      end
      collection do
            get 'lookforcity'
      end
      member do
        post 'jobcity'
        post 'jobcityconfirm'
      end
    end
    member do


      post 'cherchersaville'

      get "blog"
      get "newsurname"
      get "cestmoi"
      get "addprofilepic"
      get "defaultprofilepic"
      get "jingles"

      get "posts"
      get "aliasperson"
      post "aliasperson"
      get 'tasks' #ajouter des taches relatives à ces taches, ajouter des evenements à cette tache
      get 'events' #ajouter des taches à cet évènement , ajouter des evenements relatifs à cet evenement
      get "wikipedia"
      get "youtube"
      get "gmail"
      get "meetic"
      get "github"
      get "twitter"
      get "facebook"
      get "schedule"
      post "schedule"
    end
  end
  get 'tasksailorusedstuffs/addpeopleforwho'
  get 'tasksailorusedstuffs/forwho'
  get 'taskusedstuffs/addpeoplelikethis'
resources :seasons
resources :hotels
resources :restaurants
  get 'laundrycaptains/show'
  get 'laundry/:id', to: 'laundryjiramapeople#show'
get 'dormitory', to: 'madagascar#dormitory'
  post 'identifyrobot', to: 'mesjeux#identifyrobot', as: :identifyrobot
  get 'whoisrobot', to: 'mesjeux#whoisrobot', as: :mesjeux_quiestrobot
post 'trouverunrobot', to: 'mesjeux#trouverunrobot', as: :mesjeux_trouverunrobot
  get 'mesjeux/index'
  resources :tendances
resources :personstates do
member do
post 'myperson'
delete ':fd_id/:person_id', as: :del, action: :deleteperson
end
collection do



get 'personid'
get 'drinks'
get 'foods'
end
end
resources :categorythings do
resources :taskusedstuffs do
resources :tasksailorusedstuffs do
member do
get 'addpeopleforwho'
post 'forwho'
end
end
member do
get 'addpeoplelikethis'
post 'whouse'
end
end
member do

get 'qty'
post 'setqty'
post 'who'

end
collection do
get 'json'
get 'personid'
get 'taskid'


end
end
  get 'integrearmee',to: 'integre#armee', as: :integrearmee
  post 'grade',to: 'integre#grade', as: :armeegrade
  post 'clothesarmy',to: 'integre#clothesarmy', as: :armeeclothes
  post 'skillarmy',to: 'integre#skillarmy', as: :armeeskill
  post 'songarmy',to: 'integre#songarmy', as: :armeechanson
  post 'familyarmy',to: 'integre#familyarmy', as: :armeefamille
  delete 'deletegrade/:id',to: 'integre#deletegrade', as: :armeegradedelete
  delete 'deleteclothesarmy/:id',to: 'integre#deleteclothesarmy', as: :armeeclothesdelete
  delete 'deleteskillarmy/:id',to: 'integre#deleteskillarmy', as: :armeeskilldelete
  delete 'deletesongarmy/:id',to: 'integre#deletesongarmy', as: :armeechansondelete
  delete 'deletefamilyarmy/:id',to: 'integre#deletefamilyarmy', as: :armeefamilledelete
resources :photohavesailors
resources :foods do
collection do
get 'json'
end
end
resources :drinks do
collection do
get 'json'
end
end
resources :armygrades do
collection do
get 'myarmygrades'
post 'mysuperiorgrades'
get 'jeu'
post 'appellation'
post 'q2'
end
end
get 'jsongossips', to: 'aboutsomeonegossips#json', as: :json_gossips
resources :becausetasks do
collection do
get 'tickets'
get 'task'
get 'othertask'
end
end
resources :thistasknotthistasks do
collection do
get 'json'
get 'task'
get 'othertask'
end
end
resources :hernothers do
collection do
get 'json'
get 'person'
get 'otherperson'
end
end
resources :twopeoplemeets do
collection do
get 'person'
get 'otherperson'
end
end
resources :traits do
collection do
get 'json'
end
end
resources :attitudephotos do 
collection do
get 'person1'
get 'person2'
get 'traits'
get 'attitudes'
get 'senders'
get 'recipients'
get 'persontraits'
get 'personattitudes'

get 'addtrait'
get 'addtickets'
get 'addattitude'

end
end
resources :grades do
collection do
get 'json'
end
end
resources :stories do

resources :heroadventures
collection do
get 'heroadventures'
get 'adventures'
end
end

resources :heroadventures do
collection do
get 'json'
end
end
resources :torealizetasks do
collection do
get 'tasks'
get 'attitudes'
get 'addattitudes'
get 'addnewattitudes'
end
end

resources :instructions do
member do
get 'nextinstruction'
end
collection do
get 'next'
get 'json'
end
end
resources :radios do
collection do
 get 'json'
 get 'cities'
end
end
resources :airline_companies
resources :shaktistatements
resources :companieshaveceos do
collection do
get 'ceo'
get 'job'
get 'company'
get 'nationality'
end
member do
get 'addcustomers'
get 'addemployees'
end
end
resources :companieshavecustomers do
collection do
get 'employee'
get 'customer'
get 'company'
get 'nationality'
end
end
resources :companieshaveemployees do
collection do
get 'employee'
get 'employer'
get 'job'
get 'company'
get 'nationality'
end
end
resources :facebook_requests
resources :google_requests do
collection do
get 'json'
end
end
resources :googleresults
resources :peoplehavestrengths do
collection do
get 'linkspousepeople'
get 'strengths'
end
end
resources :peoplehaveweaknesses do
collection do
get 'linkspousepeople'
get 'weaknesses'
end
end
resources :strengths do
collection do
get 'json'
end
end
resources :weaknesses do
collection do
get 'json'
end
end
resources :bodyparts
resources :githubaccounts do
collection do
get 'json'
get 'person'
end
end
resources :githubrepos do
collection do
get 'json'
get 'githubaccounts'
end
end
resources :githubaccounts
resources :olympicpeople do
collection do

get 'events'
get 'skills'
get 'people'
get 'otherpeople'
end

end
resources :skills do
collection do
get 'json'
get 'people'
end
end
resources :secretquestions
resources :secretanswers
resources :selfies do 
collection do
  get 'people'
  get 'albumpeople'

  get 'albumemotions'

end
end
resources :musicalkeys do
collection do
get 'json'
end
end
resources :foyertasks do
collection do
get 'user2'
end
end
  post 'actionmenage', to: 'madagascar#actionmenage', as: :actionmenage
    get 'madagascar/changecuisinier', to: "madagascar#changecuisinier"
    get 'madagascar/changehommemenage', to: "madagascar#changehommemenage"
    get 'madagascar/membresfoyer', to: "madagascar#membresfoyer", as: :membresfoyer
    get 'madagascar/rolesmembres', to: "madagascar#rolesmembres"
    get 'madagascar/ordures', to: "madagascar#ordures"
    get 'madagascar/cuisinier', to: "madagascar#cuisinier"
    get 'madagascar/menage', to: "madagascar#menage"
    get 'madagascar/lemenage', to: "madagascar#lemenage"
    get 'madagascar/cuisine', to: "madagascar#cuisine"
  get 'jirama', to: 'cotisation#jirama'
  get 'cotisation', to: 'cotisation#index'
resources :repas
resources :transacs do
member do
get 'comporepas'
end
end
resources :menus
resources :depenses
resources :argent
resources :bacseries do
collection do
get 'json'
end
end
resources :admissionfiles do
collection do
get 'json'
end
end
resources :fields do
collection do
get 'json'
end
end
resources :sectors do
collection do
get 'field'
get 'city'
get 'admissionfiles'
get 'bacseries'
end
end
  post 'torolanana/add/:id', to: 'torolanana#add', as: :addtorolanana
  get 'torolanana/all', to: 'torolanana#allto', as: :alltorolanana
  get 'mytorolanana', to: 'torolanana#mytorolanana', as: :mytorolanana
  get 'mytorolanana/:id', to: 'torolanana#showmy', as: :showmytorolanana
  get 'torolanana', to: 'torolanana#index'
resources :betterpeople do
collection do
get 'twopeople'
get 'people'
get 'otherpeople'
get 'attitudes'
end
end
resources :phrases do
collection do
get 'json'
end
end
resources :linguaramis do
collection do
get 'phrases'
end
end
resources :twopeople do
collection do
get 'person1'
post 'person2'
post 'comparetwo'
post 'comparetwopeople'
get 'json'
end
end
resources :scorecriteria do
collection do
get 'json'
end
end
resources :barcriteria do
collection do
get 'json'
end
end
resources :barreviews do
collection do
get 'barcriteria'
get 'scorecriteria'
end
end
resources :recordingreviews do
collection do
get 'barcriteria'
get 'scorecriteria'
end
end
resources :barattempts do
collection do
get 'person'
end
end
resources :linkspousepeople do
member do
get 'womanman'
end
collection do
get 'json'
get 'tickets'
get 'links'
get 'people'
get 'otherpeople'
get 'forcefaiblesse'
post 'secondsailor'
post 'firstweakness'
post 'firstforce'
post 'forcefaiblessetruth'
get 'weaknessid'
get 'forceid'
end
end
resources :linkfamilypeople do
member do
get 'womanman'
get 'tickets'
end
collection do
get 'json'
get 'tickets'
get 'links'
get 'people'
get 'otherpeople'
get 'addsisterbrother'
get 'addcousin'

get 'thosepeople'
post 'sisterbrotherthosepeople'
post 'cousinthosepeople'

end
end
resources :spouselinks do
collection do
get 'json'
end
end
resources :familylinks do
collection do
get 'json'
end
end
resources :taskactions, path: 'actions' do
collection do
get 'json'
get 'thingstoknow'
end
end
resources :bars do
collection do
get 'keys'
get 'musicalinstruments'
end
end
resources :nationalities do
collection do
get 'json'
get 'people'
end
end
resources :schools do
collection do
get 'people'
end
end
resources :ustensiles
resources :artobjects
resources :schools
get 'suppravis/:id/:avis', to: 'mistralfm#socialnetwork', suppravistv: 'true', as: :suppravis
resources :questions do
collection do
get 'nbanswers'
get 'answers'
end
end
resources :answers
  get 'deleteentry', to: "mistralfm#socialnetwork", as: :deleteentry
  get 'mesinstruments/:id', to: "mistralfm#ustensiles", as: :mesustensiles
  get 'mesustensiles/:id', to: "mistralfm#instrument", as: :mesinstruments
  get 'alltheactors', to: "mistralfm#alltheactors"
  get 'allthepplhits', to: "mistralfm#alltheppl"
  get 'allthehits', to: "mistralfm#allthehits"
  get  'theits', to: "mistralfm#theits"
  get  'allactors', to: "mistralfm#allactors"
  get 'mistralfm/index'
  post 'dessinpost', to: 'dessiner#dessin', as: :creerpostdessin
  get 'dessiner/index', to: 'dessiner#index', as: :dessinerqch
post 'actiontasks/:id', to: 'tasks#actiontasks', as: :useractionswithtasks
  get 'lovedontlove/index'
post 'searchforattitudes',to: 'mypeople#seeattitudes', as: :searchforattitudes
post 'searchsurnames',to: 'mypeople#seesurnames', as: :searchsurname
post 'searchmytasks',to: 'mypeople#seetasks', as: :searchtask
post 'mypeople',to: 'mypeople#seeppl', as: :searchppl
post 'myactor',to: 'mypeople#seeactor', as: :searchactor
post "opinion/:id", to: "mistralfm#socialnetwork", as: :opinion
resources :peoplerelations do
collection do
get 'json'
end
end
resources :worktwos do
collection do
get 'json'
get 'rel'
get 'tickets'
get 'personid'
get 'otherpersonid'
get 'worktwosjson'
end
end
resources :posts_surname_meanings do
collection do
get 'allps'
end
end
resources :surnames do
member do
get 'editpeople'
end
collection do
get 'names'
get 'people'

end
end
resources :kgbtasks do
    collection do
      get 'people'

end
end
  get 'studenttasks/index'
  get 'studenttasks/show'
resources :studenttasks do
collection do
get 'people'
end
end
resources :hackertasks do
collection do
get 'people'
get 'tvseriesjson'
get 'tvseries'
end
end
  get 'mangatheque', to: 'mangatheque#index', as: :mangatheque
resources :films do
collection do
get 'actors'
end
    member do
      get 'editroles'
    end

end
resources :lesson_languages
resources :lesson_titles
resources :lesson_recordings
resources :lesson_contents do
member do
get 'repeatafterpro'
end
end
resources :lesson_applications
resources :lesson_sentences

resources :lessons do
member do
get 'title'
get 'recordbook'
get 'languages'
get 'contents'
get 'samplecontents'
get 'words'
get 'recordings'
get 'samplerecordings'
end
end
resources :languages
get 'route1', to: "tickets#route1"
get 'route2', to: "tickets#route2"
resources :answerinvites 
resources :invites do
collection do
get 'tasks'
get 'mymessage'
get 'people'
get 'peopleform'
end
end
  post 'psa', to: 'posts_surnames#psa', as: :mypsa
  post 'psb', to: 'posts_surnames#psb', as: :mypsb
  get 'mystops', to: 'posts_surnames#mysurnames', as: :mypssurnames
  get 'addaplacetosurnameattribute', to: 'posts_surnames#addaplacetops', as: :addaplacetosurnameattribute
  get 'selectaplacetosurnameattribute', to: 'posts_surnames#selectaplacetops', as: :selectaplacetosurnameattribute
  
  

  resources :compohaverecipients
  resources :artists
  resources :musicalcompositions do
    collection do
      get 'songs'
    end 
  end
  get "compo/:id", to: "musicalcompositions#show", as: :compo
  post '/posts_surnames/:id', to: "posts_surnames#update", as: :updateps
  post '/people/:id', to: "people#update"
  post '/places/:id', to: "places#update"
  post '/profilepictures/:id', to: "profilepictures#update"
  post 'signupcomposer/create'
  get 'signincomposer/destroy'
  get 'signincomposer/create'
  get 'signincomposer/new'
  get 'signupcomposer/new'
  get 'signupcomposer/edit'
  get 'signupcomposer/update'
  devise_for :composers, controllers: {registrations: 'signupcomposer', sessions: 'signincomposer' }
  resources :composers
  resources :islands do
        member do
      patch 'nouvelaidememoire'
        end
  end
  resources :robots
  resources :beaches do
        member do
      patch 'nouvelaidememoire'
      get 'newstreet'
        end
  end
  resources :create_beaches
  resources :aidememoires#, path: 'notes', controller: 'notes'
  post "mytick/:id", to: "tickets#myticket", as: :myticket
  get "tasksdecem", to: "tickets#tasks", as: :tasksdecesailor
  post "taskstoussailors", to: "tickets#taskstoussailors", as: :tasksdecessailors
  resources :tickets do
    collection do
      get 'linkspousepeople'
      get 'linkfamilypeople'
      get 'worktwos'
      get "json"
      get "cbrecipients"
      get "cbsenders"
      post "recipients"
      post "messagecontent"
      get "severalticketsandtasks"
      get "addmessage/:id", action: :addmessage, as: :addmessage

    end
    member do
      get "senders", action: :editsenders, as: :editsenders
      get "recipients", action: :editrecipients, as: :editrecipients
      get "messagecontent", action: :editmessagecontent, as: :editmessagecontent
      get "editalltasks"
      get "tasksforvalidation"
      get "tasksforunvalidation"
    end
  end
  resources :phrases_and_words
  resources :programminglanguages
  get "recordingsmycontent", to: "recordings#mycontent", as: :myownrecordingscontent
  get "recordingsmycontentbis", to: "recordings#mycontentbis", as: :myownrecordingscontentbis
  get "record/:typerecord", to: "recordings#myrecord"
  resources :musicalscores do
    member do
      post 'addbar'
    end
    collection do
      get 'keys'
      get 'musicalinstrument'
      get 'myscores'
    end
  end
  resources :musicalinstruments do
    collection do
      get 'json'
    end
  end
  resources :planets
  resources :addresses do
    collection do
      get 'myaddresses'
    end
  end
  
  get "chercherunmoussaillon",to:"people#chercherparnom"
  resources :jobs do
    collection do
      get 'things'
      get 'json'
      get 'people'
    end
  end
  resources :missions
  resources :emotions do
    collection do
      get 'json'
    end
  end
  resources :historical_characters
  resources :webpages
  resources :proposalvalidations
  resources :create_webpages
  get 'queensgambit', to: "queensgambit#index", as: :tqg
  get 'queensgambit/new'
  resources :twitteraccounts do
    collection do
      get 'searchintweets'
      get 'searchtweets'
    end
  end
  get 'news', to: 'news#index'
  post 'news', to: 'news#index'
  patch 'mysurnames/update'
  post 'mysurnames/update'
  get 'mysurnames/signout', as: :signoutsurname
  resources :mylayouts
  post "search", to: 'posts#searchposts', as: :searchpost
  get "search", to: 'posts#searchposts', as: :searchpostfirst
  get "search/page/:page", to: 'posts#searchposts', as: :searchpage
  #actions on posts
  get "addaword/(:id)", to: "posts#addaword", as: :addword
  get "addadish/(:id)", to: "posts#addadish", as: :adddish

  post "/postsnew", to: "posts#postsnew"
  get 'hackseveral/people', as: :hackseveral
  resources :jingles do 
collection do
get 'jinglesreactions'
get 'radios'
get 'json'
      get 'allmytasks'
get 'mypeople'
get 'radiopeople'
end
    member do
      get 'addsurname'
    end
  end
  resources :profilepictures do
    collection do
      get "mypics"
    end
    member do
      get "mysurname"
    end
  end
  resources :otherplaces
  resources :words
  resources :ideas
  resources :tvshows
  resources :philosophers
  resources :i18nphrases do
    collection do
      get 'json'
      get 'people'
    end
  end
  resources :m17nphrases
  resources :proposals do 
    member do
      post 'no'
      post 'cancel'
      get 'no'
      post 'yes'
      get 'yes'
    end
  end
  resources :tvseries do
    member do
      get 'editroles'
    end
    collection do
      post 'acteurs'
      get 'jeudesacteurs'
      get 'actors'

    end
  end
  resources :reactions do
    collection do
      get 'json'
      get 'jsonreactions'
      get 'mypeople'
      get 'updatethisreaction'
    end
  end
  resources :brands
  resources :historicalevents
  resources :socialmovements do
    collection do
	get 'json'
    end
  end
  resources :sports
  resources :plantspecies
  resources :cities do
    collection do
	get 'json'
    end
  end
  resources :albums do
    resources :photos
    member do

      get 'addphotos'
      get 'tagaperson'
      post 'tagsomeone'
    end
    collection do
      get 'mytaggedpeople'
	get 'personjson'
	get 'person'
	get 'people'
    end
  end
  resources :companies do
  collection do
  get 'json'
  end
  end
  resources :countries do
    collection do
      post 'reponses'
      get 'jeu'
    end
  end
  resources :dishes do
    collection do
      get "adddishnow"
    end
  end

  resources :states
  resources :fakecomments do
	member do 
		get 'courseapied', as: :courseapied
	end
  end
  resources :pronouns
  resources :endroits
  resources :emails
  resources :songs do 
    collection do
      get "mypeople"
      get 'json'
      get 'addcouplet'
      get 'songid'
      post 'addonecouplet'
      get 'addrefrain'
      post 'addonerefrain'

    end
    member do
      get 'destroyconfirm'
      get 'destroyit'
      get 'composer'


    end
  end
  resources :couplets
  resources :refrains
  get "/persondisplay/:id", to: "posts#persondisplay"
  get "/thingdisplay/:id", to: "posts#thingdisplay"
  get "/eventdisplay/:id", to: "posts#eventdisplay"
  resources :routines, only: [:show,:update]
  resources :synonyms
  get 'displayusurpation', to: 'displayusurpation#index'
  resources :reactions_texts
  resources :validations
  resources :scheduledtasks
  resources :event_types
  resources :attitudes do
    collection do
 	get 'attitudejson'
 	get 'mysailors'
 	get 'myfollowers'
    end
  end
  resources :metonymies
  resources :things do
        collection do
            get "json"
            get "clearbasket"

    end
    member do
            get "mysurname"
            get "removebasket"
      get "addbasket"

    end

  end
  post 'addsomethingyoudidonce', to: "people#addsomethingyoudidonce"
  get '/didonce/:id', to: "people#didonce"
  
  get '/:user/:title-3083373c1185', to: 'articles#showarticle', as: :showarticle
  resources :articles do
    member do
      get 'showarticle/:title', action: 'showarticle', as: :showarticle_article
    end
  end

  resources :tweets do 
    collection do
      get "indextweetrails", action: "indextweetrails", as: "indextweetrails"
      get 'unauthorized'
      post 'newtweet'
      get 'myfeeds', action: :myfeeds, as: :myfeeds
    end
    member do
      get "showtweetrails"

    end

  end
  resources :posts_surnames do
    collection do
            get 'allps'
            get 'ps1'
            get 'ps2'


            get 'mypeople'
            get 'names'
            get 'namesdestinataire'
            get 'myavatars'
            get 'mystuff'
            get 'mypics'

    end
    member do
            patch 'nouvelaidememoire'

            get 'posts'
            get 'editerceluila'
    end
  end
  resources :savedtweets
  get 'searchpost', to: 'posts#searchpost'
  post 'searchpost', to: 'posts#searchpost'
  resources :reactions
  resources :facts
  resources :places do
collection do
get 'json'
end    
member do
get 'mysurname'
end
  end
  resources :cars
  resources :post_types
  resources :comicbooks
  resources :clothes
  resources :moviescenes
resources :laundryjiramapeople do
resources :laundrycaptains
member do
post 'capitaine'
end

end
  resources :epochs do
  resources :cities do
    member do
      get 'addpeoplecity'
      post 'addthosepeoplecity'
    end
  end
    resources :grades do
      resources :people do
        resources :users do
          resources :armygrades do
resources :laundryjiramapeople do
collection do
get 'jsonjirama'
get 'jiramapeople'
end
end
      collection do
        get 'usurpate'
        post 'usurpatewithgrade'
      end
          end
        end
      collection do
        get 'addstudents'
        post 'addstudentsroute'
      end
      end
    end
    collection do
      get 'json'
      get 'student'
      get 'grade'
      get 'person'
    end
  end
  resources :musicalbums
  resources :collections do 
    collection do
      get "tasks"
      get "editmycollectionstasks"
      get "collectionsoftasks"
      get "collectionsoftasks/:colid", as: :collectionoftasks, action: :collectionoftasks
      get "addallcollections"
      get "taskswithoutcollections"
      get "findthiscollection"
      get "findthiscollectionmoussaillon"
      get "findthiscollectiontask"
      get 'mycollections', action: 'collectionsposts', as: :collectionofpeopleforpost
    end
    member do
      get 'collectionwithtasks'
      post 'mycollectionofpeople'
    end
  end
  post "allmypostssurnames", to: "posts_surnames#renderone", as: :rendermypostssurnames
  resources :videos
  resources :photos do
member do
get 'tagaperson'
post 'tagsomeone'
end
 collection do
  get 'people'
  get 'albumpeople'

  get 'albumemotions'
 end
  end
  get 'notes', to: "recordings#notes"
  resources :recordings do 
    collection do
      get 'json'
      get 'phraseandword'
      get 'wordandphrase'
      get 'onlyphrase'
      get "onlyword"
    end
  end
  resources :events do
    collection do
      get "json"
    end
  end
root :to => "welome#user"

  resources :contents
  resources :comments
  resources :fromsomeonegossips
  post '/aboutsomeonegossips/:id', to: "aboutsomeonegossips#show"
  resources :aboutsomeonegossips do
    collection do
      get "aboutthem"
      get "reactionid"
      get "before"
      get "during"
      get "after"
    end
  end

  post 'actualiserlalistedespersonnes', to: "people#actualiserlalistedespersonnes"
  resources :photos do
    member do 
      get 'facebook'
      post 'facebook'
    end
  end
  post "/welome", to: "welome#index"
  post "submitmypost", to: "posts#submitmypost"
  #post "updateuser/:id/modify", to:"updateuser#modify", as: :user, via: [:get,:post]
  resources :posts do 
resources :mymaps do
resources :mymapscoords
member do


get 'addaplace'
get 'searchaplace'
post 'addaplace'
post 'placeadded'
end
end


collection do
get 'postrange'
post 'postrangeposts'
get 'placeid'

get 'mysongs'
get 'hackedpeople'
get 'hernother'
get 'thistasknotthistask'
get 'i18nphrases'
  get 'collectionstasks', to: 'posts#collectionstasks', as: :collectionstasks

      get 'socialmvmt'
      get 'createnewthread'

      post 'newpostwithcollections'
      get 'newpostwithcollections'
      post 'jingles'
      get 'jingles'
      post 'myavatars'
      post 'mypeople'
      get 'allmytasks'
      post 'myownpeople'
      post 'myfrequentpeople'
      post 'mycollectionsofpeople'
      post 'mondestinataire'
      get "yourlayout/:layouttype", action: :yourlayoutpost, as: :yourlayoutpeopleyeah
      post "yourlayout/:layouttype", action: :yourlayoutpost, as: :yourlayoutpeople

end
    member do 
      get 'addaposttype'

            get 'addamap'
            get 'addasongtothispost'
            get 'mestachesdehacker'
            get 'socialmovements'
            get 'myjingles'
      get 'addnewaddress'
      get 'tweets'
      get 'editavatars'
      get 'addnewavatars'
      get 'specialoptions'
      patch 'myproposals'
      post 'myproposals'
      get 'mesicones'
      get 'myproposals'
      get 'photosorfilms'
      get 'myepochs'
      get 'mymoviescenes'
      get 'mycomicbooks'
      get 'myhistoricalcharacters'
      get 'reproduire'

      get 'addcompany'
      get 'addwebpage'
      get 'addmovie'
      get 'currentprofilepic'
      get 'facebookreq'
      get 'addcontent'

      get "mylayout/:layouttype", action: :mylayoutpost, as: :mylayoutpost
      get 'linkreaction'
      get 'attitude'
      get 'tasksposts'
      get 'messagescaches'
      get 'words'
      get 'synonyms'
      get 'fakecomments'
      get 'metonymies'
      get 'anaphorsposts'
      get 'googlereq'
      get 'postsplaces'
      get 'addtvseries'
      get 'addnewjingles'
      get 'addtendances'
      get 'adddishes'
      get 'postexpired'
      get 'emailsforposts'
      get 'postsjingles'
      get 'avatars'
      get 'character'
      get 'newtendances'
      get 'newjingles'
      get 'repliquefilm'
      get 'allsailors'
      get 'usurpation'
      get 'tasks'
      get 'surnames'
      get 'surnames/:idsurname/usurpation', action: :usurp, as: :usurp
      get 'thread'
      get 'facts'
      get 'tasks_sailors/:id', action: :anaphors, as: :anaphors
    end
  end
      get "/posts/:id/mylayout/:layouttype", action: :mylayoutpost, controller: :posts, as: :mylayoutpost

  get '/posts/page/:page',to:'posts#index', as: :allpostspage
  resources :techniques do
    member do
      get 'formdelete'
      get 'deletereally'
    end
  end
  resources :technologies
  resources :arguments
  post '/posts/new',to:'posts#new'
  post '/posts/:id/edit',to:'posts#edit'
  patch '/posts/:id/edit',to:'posts#edit'
  get '/addasynonym',to:'posts#addasynonym'
  get '/addametonymy',to:'posts#addametonymy'
  post '/posts/:id/edit',to:'posts#edit'
  get "/editoptions", to: "updateuser#options"
get 'voyageuranonyme', to: 'updateuser#voyageuranonyme'
post 'whoid', to: 'updateuser#whoid'
post 'selectcityroom', to: 'updateuser#selectcityroom'
post 'cherchelogementresto', to: 'updateuser#cherchelogementresto'
post 'reserver', to: 'updateuser#reserver'
post 'mareservation', to: 'updateuser#mareservation'
get 'cityidupdateuser', to: 'updateuser#cityid'
get 'mybookings', to: 'updateuser#mybookings'

  post "/editoptions", to: "updateuser#options"
  get "/newperson", to: "updateuser#createpers"
  get "/renderapost/:id", to: "posts#renderapost"
  post "/renderanemail", to: "posts#renderanemail"
  post "/hacksomeone/:id", to: "posts_surnames#hacksomeone"
  post "/renderoneemail/:id", to: "posts#renderoneemail"
  post "/deleteallthoseposts", to: "posts#deleteallthoseposts"
  get "/renderaperson/:id", to: "posts#renderaperson"
  post "/renderareaction/:id", to: "posts#renderareaction"
  post "/renderareactionwithoutid", to: "posts#renderareactionwithoutid"
  post "/renderapostirl", to: "posts#renderapostinrealtime"
  get "/renderatask/:id", to: "posts#renderatask"
  post "/newperson", to: "updateuser#createpers"
  post "/renderallthethings/:id", to: "posts#renderallthethings"
  post "/talkaboutthis/:id", to: "posts#talkaboutthis"

  devise_for :users

 resources :users, only: [:show] do
resources :people
 end
 
  resources :events do 
        collection do
            get "clearbasket"

    end
    member do
            get "removebasket"
      get "addbasket"
      get 'tasks'
    end
  end

  devise_for :posts_surnames, controllers: { sessions: 'mysurnames' }
  get "/setoftasks/:setoftask_id/tasks/:id/edit", to: "tasks#edit", as: :edit_setoftask_task
  get "/setoftasks/:setoftask_id/tasks/:id", to: "tasks#show", as: :setoftask_task

  resources :tasks do 
    
    collection do
      get 'googlerequest'
      get 'justeca'

      post 'sailorjobticket'
      post 'searchsailorjobticket'
      post 'searchsailorticket'
      get 'searchtaskticket'
      post 'accomplishataskbefore/:taskhavetaskactiontwosailorjob_id/precededbytask', action: :taskhavetaskactiontwosailorjobprevious, as: :taskhavetaskactiontwosailorjobprevious

      get 'accomplishataskbefore/:taskhavetaskactiontwosailorjob_id', action: :taskhavetaskactiontwosailorjob, as: :taskhavetaskactiontwosailorjob
      post 'taskactionsailorjob/:taskaction_id/:sailorjob_id/:taskactionsailorjob_id/addsailor', action: :taskactionsailorjobaddsailor, as: :taskactionsailorjobaddsailor
      get 'taskactionsailorjob/:taskaction_id/:sailorjob_id', action: :taskactionsailorjob, as: :taskactionsailorjob
      get 'taskactionidd'

      post 'selecttaskactionsailorjob'
      post 'selectsailortaskaction'
      get 'addtaskactiontosailorfortask'
      post 'twosailors'
      post 'secondsailor'
      post 'firstsailor'
      post 'secondtask'
      get 'comparesailors'
      get 'sailorsofthistask'
      post 'sailorsofthistask'
      get 'chosesailortask'
      get 'newwithaidememoire'
      get 'failingtickets'
      get 'tickets'
      get 'drinks'
get 'epochs'
get 'gossips'
      get 'things'

      get 'githubrepos'
      get 'city'
      get 'json'
      get 'myactions'
      get 'attitudesailors'
      get 'worktwo'
      get 'attitudes'
      get 'myrelatedtasks'
      get 'people'
      get 'setoftasks'

      get 'allmytasks'
      get 'showcollections'
      delete 'deleteasailor'
      delete 'deleteasailorimage'
      get 'places'
      get 'recordings'

    end
    member do

      get "attitudestask"
      get "goodidea"
      get "badidea"
      get "note"
      get "noterealizedtask"
      get "risk"
      get "saved"
      patch 'nouvelaidememoire'
      get 'addsenders'
      get 'addrecipients'

      get 'iaccomplishedthistask'
      get 'confirmdelete'
      get 'deletetask'

      get 'messageforyou'
      get 'events'
      get 'showplaces'
      get 'gossips'
      get 'nearbyplaces'
      get 'successticket'
      get 'failureticket'
    end
  end

  #devise_scope :user do
  ##    get '/users/sign_out' => 'devise/sessions#destroy'
  #    get '/users/sign_in' => 'devise/sessions#new'
  #end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
