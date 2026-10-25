class Person < ApplicationRecord
has_many :companieshaveemployees, foreign_key: 'employee_id'
has_many :people_cities

has_many :personhassosies
has_many :peoplehavejobs

has_many :ecartages

has_many :traumberufe, class_name: 'Traumberuf'

#has_many :twopeople, foreign_key: "person_id"
has_many :twopeoplea, foreign_key:"person_id", class_name: "Twoperson"
#has_many :twopeoplebb, foreign_key: "otherperson_id", class_name: "Twoperson"
has_many :twopeopleb, foreign_key:"otherperson_id", class_name: "Twoperson"

has_many :githubaccounts, foreign_key: 'owner_id'
accepts_nested_attributes_for :githubaccounts, allow_destroy: true
has_many :skillhavesailors


has_many :linkspousepeople
has_many :linkfamilypeople

Person.findbyid(q)

Person.findbyid(q)

Person.findbyid(q)

Person.findbyid(q)
has_many :sailorhaveattitudesintasks, foreign_key: 'person_id'
has_many :artistpeople, foreign_key: 'person_id'
has_many :artspratiques, :source => "artobject",:through => :artistpeople, class_name: 'Artobject'
belongs_to :nationality, optional: true


has_many :musicalinstrumentspratiques, :source => "artobject",:through => :artistpeople, class_name: 'Musicalinstrument'
  has_many :attitudefilms,  foreign_key: 'person_id'
  has_many :acteursfilmsattitudes, :source => "user",:through => :attitudefilms, class_name: 'User'
  has_many :attitudetvseries,  foreign_key: 'person_id'
  has_many :acteursseriesattitudes, :source => "user",:through => :attitudetvseries, class_name: 'User'
  has_many :answerpeople,  foreign_key: 'person_id'
  has_many :redbandpeople,  foreign_key: 'person_id'
  has_many :braceletgens, :source => "user",:through => :redbandpeople, class_name: 'User'

  has_many :peoplecars,  foreign_key: 'person_id'
  has_many :mavoituregens, :source => "user",:through => :peoplecars, class_name: 'User'
  has_many :marquevoituregens, :source => "car",:through => :peoplecars, class_name: 'Car'
  has_many :inloves,  foreign_key: 'person_id'
  has_many :amoureuxgens, :source => "user",:through => :inloves, class_name: 'User'
  has_many :lgbtpeople,  foreign_key: 'person_id'
  has_many :lgbtgens, :source => "user",:through => :lgbtpeople, class_name: 'User'
  has_many :rcars,  foreign_key: 'person_id'
  has_many :voituregens, :source => "user",:through => :rcars, class_name: 'User'
  has_many :rrobots,  foreign_key: 'person_id'
  has_many :robotgens, :source => "user",:through => :rrobots, class_name: 'User'
  has_many :peoplebelievers,  foreign_key: 'person_id'
  has_many :croyantgens, :source => "user",:through => :peoplebelievers, class_name: 'User'
  has_many :savedpeople,  foreign_key: 'person_id'
  has_many :sauvegens, :source => "user",:through => :savedpeople, class_name: 'User'
  has_many :peoplelike,  foreign_key: 'person_id'
  has_many :aimegens, :source => "user",:through => :peoplelike, class_name: 'User'
  has_many :peopledontlike, foreign_key: 'person_id'
  has_many :aimepasgens, :source => "user", :through => :peopledontlike,  class_name: 'User'

  has_many :phavefilms
  has_many :films, :through => :phavefilms
  has_many :tvserieshaveactors
  accepts_nested_attributes_for :tvserieshaveactors
  has_many :tvseries, :through => :tvserieshaveactors, class_name: "Tvseries"
  has_many :my_posts_surnames, :foreign_key => "sailor_id", class_name: 'PostsSurname'
  accepts_nested_attributes_for :my_posts_surnames, allow_destroy: true
  has_and_belongs_to_many :phrases, :join_table => :peoplesentences, :class_name => 'Recording'
  has_and_belongs_to_many :mynames, :join_table => :peoplerecordings, :class_name => 'Recording'
  has_and_belongs_to_many :aidememoires, :join_table => :peoplehavephrasesandwords
  has_and_belongs_to_many :usedprofilepictures, :join_table => :profilepicsforpeople, class_name: "Profilepicture"
      has_and_belongs_to_many :profilepics, join_table: :currentprofilephotos, class_name: 'Profilepicture'
  has_and_belongs_to_many :permanentprofilepictures, :join_table => :permanentprofilepics, class_name: "Profilepicture"
  before_validation :savephrasesandwords, :on =>[:create, :update]
  after_validation :saveimage, :on =>[:create, :update]
  #after_save :saveimage

  belongs_to :myprofilepic, class_name: "Profilepicture", optional: true
  has_many :albums
  has_and_belongs_to_many :scheduledtasks, :join_table => :peopleschedules
  accepts_nested_attributes_for :scheduledtasks #,  :allow_destroy => true
  has_and_belongs_to_many :facts
  has_many :posts_surnames
  has_and_belongs_to_many :places
  accepts_nested_attributes_for :profilepictures
has_and_belongs_to_many :reactions
  has_one :wikipedia_page
  accepts_nested_attributes_for :wikipedia_page
belongs_to :pronoun, optional: true
has_many :onetimes
accepts_nested_attributes_for :onetimes, allow_destroy: true
has_and_belongs_to_many :collections
  has_many :sailorjobs, class_name: 'Sailorjob'
has_and_belongs_to_many :surnames
  has_and_belongs_to_many :relatedtasks, class_name: 'Task'
  has_and_belongs_to_many :relatedevents, class_name: 'Event'
#comment par trouver le user à partir du person si il y en a 
  has_many :aliasesrecords, class_name: 'Alias'
  attr_accessor :recordmyphrasesandwords, :recordmywords, :myownphrasesandwords, :contentmyownphrasesandwords, :myownwords, :contentmyownwords

  has_many :tablecommeelles, class_name: "Usurpation", foreign_key: 'post_id'
  has_many :twitteraccounts
  accepts_nested_attributes_for :twitteraccounts, allow_destroy: true
  #has_many :currentprofilephotos

      has_and_belongs_to_many :mycurrentprofilepictures, join_table: :currentprofilephotos, class_name: 'Profilepicture'

  belongs_to :country, optional: true
  belongs_to :city, optional: true
  
  has_many :ticketshavesenders, foreign_key: "ticket_id"
  has_many :senttickets, :through => :ticketshavesenders
  has_many :ticketshaverecipients, foreign_key: "ticket_id"
  has_many :receivedtickets, :through => :ticketshaverecipients



      @i+=1
      
    


    
    col


      p @people
    if mondestinataire
      @mystr = mondestinataire.strip.squish
      if @mystr.length > 0
        mystring=@mystr.downcase.gsub(' ','%')
      @people+=Person.where('lower(name) like ? or lower(description) like ?',"#{@mystr.downcase.gsub(' ','%')}%","#{mystring}%")
      p @people
    if post && post.my_posts_surnames[0] && post.myownsurnames[0] && post.myownsurnames[0].name



      @yourstr = post.myownsurnames[0].name.strip.squish
      if @yourstr.length > 0
        mystring=@yourstr.downcase.gsub(' ','%')
      @people+=Person.where('lower(name) like ? or lower(description) like ?',"#{mystring}%","#{mystring}%")
      p @people
    ok = ((@yourstr && @yourstr.length >= 3) ||(@str && @str.length >= 3) || (mondestinataire && mondestinataire.length >= 3) || (@mystr && @mystr.length >= 3))
    if chosen && chosen.length > 0 && ok
      (chosen.select {|x|x}+@people.to_a).uniq
    elsif @people && @people.length > 0 && ok
      (@people.to_a).uniq
    else
    #Person.all
      #(@people.to_a).uniq
      Person.where(id: [10])
  has_many :personaljingles, class_name: "Thisisjingle"
    #accepts_nested_attributes_for :personaljingles,  :allow_destroy => true
  accepts_nested_attributes_for :jingles,  :allow_destroy => true

#

    save


   
#  if file
#    ppic = Profilepicture.find_or_create_by(title: self.name, image: self.read_attribute(:image))
#    self.permanentprofilepictures << ppic
#end


