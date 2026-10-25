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
  has_many :my_posts_surnames, :foreign_key => "sailor_id", class_name: 'PostsSurname'
  has :peoplesentences
  has_many :peoplerecordings
  has_many :peoplehavephrasesandwords
  has_many :profilepicsforpeople
has_many :currentprofilephotos
  has_many :permanentprofilepics

  has_many :albums
  has_many :peopleschedules
  has_and_belongs_to_many :facts
  has_many :posts_surnames
  has_and_belongs_to_many :places
has_and_belongs_to_many :reactions
  has_one :wikipedia_page
has_many :onetimes
has_and_belongs_to_many :collections
  has_many :sailorjobs, class_name: 'Sailorjob'
has_and_belongs_to_many :surnames
  has_and_belongs_to_many :relatedtasks, class_name: 'Task'
  has_and_belongs_to_many :relatedevents, class_name: 'Event'
  has_many :aliasesrecords, class_name: 'Alias'

  has_many :tablecommeelles, class_name: "Usurpation", foreign_key: 'post_id'
  has_many :twitteraccounts
  #has_many :currentprofilephotos

      has_many :currentprofilephotos

  
  has_many :ticketshavesenders, foreign_key: "ticket_id"
  has_many :senttickets, :through => :ticketshavesenders
  has_many :ticketshaverecipients, foreign_key: "ticket_id"
  has_many :receivedtickets, :through => :ticketshaverecipients



  has_many :personaljingles, class_name: "Thisisjingle"

end


