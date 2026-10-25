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


  has_many :attitudefilms,  foreign_key: 'person_id'
  has_many :attitudetvseries,  foreign_key: 'person_id'
  has_many :answerpeople,  foreign_key: 'person_id'
  has_many :redbandpeople,  foreign_key: 'person_id'

  has_many :peoplecars,  foreign_key: 'person_id'
  has_many :inloves,  foreign_key: 'person_id'
  has_many :lgbtpeople,  foreign_key: 'person_id'
  has_many :rcars,  foreign_key: 'person_id'
  has_many :rrobots,  foreign_key: 'person_id'
  has_many :peoplebelievers,  foreign_key: 'person_id'
  has_many :savedpeople,  foreign_key: 'person_id'
  has_many :peoplelike,  foreign_key: 'person_id'
  has_many :peopledontlike, foreign_key: 'person_id'

  has_many :phavefilms
  has_many :films, :through => :phavefilms
  has_many :tvserieshaveactors
  has_many :tvseries, :through => :tvserieshaveactors, class_name: "Tvseries"
  has_many :my_posts_surnames, :foreign_key => "sailor_id", class_name: 'PostsSurname'
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
  has_many :peopleschedules
  has_and_belongs_to_many :facts
  has_many :posts_surnames
  has_and_belongs_to_many :places
has_and_belongs_to_many :reactions
  has_one :wikipedia_page
belongs_to :pronoun, optional: true
has_many :onetimes
has_and_belongs_to_many :collections
  has_many :sailorjobs, class_name: 'Sailorjob'
has_and_belongs_to_many :surnames
  has_and_belongs_to_many :relatedtasks, class_name: 'Task'
  has_and_belongs_to_many :relatedevents, class_name: 'Event'
#comment par trouver le user à partir du person si il y en a 
  has_many :aliasesrecords, class_name: 'Alias'

  has_many :tablecommeelles, class_name: "Usurpation", foreign_key: 'post_id'
  has_many :twitteraccounts
  #has_many :currentprofilephotos

      has_many :currentprofilephotos

  belongs_to :country, optional: true
  belongs_to :city, optional: true
  
  has_many :ticketshavesenders, foreign_key: "ticket_id"
  has_many :senttickets, :through => :ticketshavesenders
  has_many :ticketshaverecipients, foreign_key: "ticket_id"
  has_many :receivedtickets, :through => :ticketshaverecipients



  has_many :personaljingles, class_name: "Thisisjingle"

end


