class Person < ApplicationRecord
has_many :companieshaveemployees, foreign_key: 'employee_id'
def ccompaniesnot(myids)
ccompanies.where.not(id: myids)
end
def ccompaniesspecial(p1,p2,myids)
k=p1 == self ? p2 : p1
k.ccompanies.where(id: myids)
end
def cjobsnot(myids)
cjobs.where.not(id: myids)
end
def cjobsspecial(p1,p2,myids)
k=p1 == self ? p2 : p1
k.cjobs.where(id: myids)
end
has_many :people_cities
def pcitiesnot(myids)
pcities.where.not(id: myids)
end
def pcitiesspecial(p1,p2,myids)
k=p1 == self ? p2 : p1
k.pcities.where(id: myids)
end

has_many :personhassosies
has_many :peoplehavejobs

has_many :ecartages
def self.birthdaytoday
k=Date.today
where(dateofbirth: (1900..k.year).map {|x|Date.new(x,k.month,k.day)})
end
def self.findbynamedatebirth(j)
self.findbyname(params[:name]).where('dateofbirth is not null')

end
def comparages
Person.joins('left join ecartages on ecartages.person_id = people.id or ecartages.otherperson_id = people.id').select('ecartages.*, people.*').where(['ecartages.person_id = ? or ecartages.otherperson_id = ?',self.id,self.id]).group('people.id').where('people.id is not null')
end

has_many :traumberufe, class_name: 'Traumberuf'

#has_many :twopeople, foreign_key: "person_id"
has_many :twopeoplea, foreign_key:"person_id", class_name: "Twoperson"
#has_many :twopeoplebb, foreign_key: "otherperson_id", class_name: "Twoperson"
has_many :twopeopleb, foreign_key:"otherperson_id", class_name: "Twoperson"
def mysexedisplayspecde
if self.sexe == 'F'
'defille'
elsif self.sexe == 'M'
'degarcon'
else
'delleoului'
end
end
def mysexedisplayspec
if self.sexe == 'F'
'lafille'
elsif self.sexe == 'M'
'legarcon'
else
'elleoului'
end
end
def aken

messkills=Findthebest.firstwinner(self.id)
messkills.select {|x|x[1]}.group_by {|x| Skill.find(x[1])}.to_a
end
def sizeinm
k=self.size.to_f/100
k.to_s + " m"
end
def size=(x)
i=x.to_i == 0 ? nil : x 
write_attribute(:size,i)
end
def size
read_attribute(:size)
end
def jealous

messkills=Findthebest.firstloser(self.id)


messkills.select {|x|x[1]}.group_by {|x| Skill.find(x[1])}.to_a
end

has_many :githubaccounts, foreign_key: 'owner_id'
accepts_nested_attributes_for :githubaccounts, allow_destroy: true
has_many :skillhavesailors


has_many :linkspousepeople
has_many :linkfamilypeople
def sisters
q=Person.nbgensfamille.where('fam.name_de = ?','Geschwister').where(['p1.id = ? or p2.id = ?',self.id,self.id]).where(['(p1.sexe = ? and p1.id != ?) or (p2.sexe = ? and p2.id != ?)','F',self.id,'F',self.id]).map do |x|
if x.p2 == self.id
x.p1
else
x.p2
end

end
Person.findbyid(q)
end
def girlfriends

q=Person.nbgenscouple.where(['lov.name_en = ? or lov.name_fr = ? or lov.name_fr = ?','lovers','lesbiennes','union libre']).where(['p1.id = ? or p2.id = ?',self.id,self.id]).where(['(p1.sexe = ? and p1.id != ?) or (p2.sexe = ? and p2.id != ?)','F',self.id,'F',self.id]).currentlove.map do |x|
if x.p2 == self.id
x.p1
else
x.p2
end

end
Person.findbyid(q)
end
def self.currentlove
where('ll.begindating < ? and ll.enddating is null',DateTime.now)
end
def boyfriends
q=Person.nbgenscouple.where('lov.name_en = ?','lovers').where(['p1.id = ? or p2.id = ?',self.id,self.id]).where(['(p1.sexe = ? and p1.id != ?) or (p2.sexe = ? and p2.id != ?)','M',self.id,'M',self.id]).currentlove.map do |x|
if x.p2 == self.id
x.p1
else
x.p2
end

end
Person.findbyid(q)
end
def brothers
q=Person.nbgensfamille.where('fam.name_de = ?','Geschwister').where(['p1.id = ? or p2.id = ?',self.id,self.id]).where(['(p1.sexe = ? and p1.id != ?) or (p2.sexe = ? and p2.id != ?)','M',self.id,'M',self.id]).map do |x|
if x.p2 == self.id
x.p1
else
x.p2
end

end
Person.findbyid(q)
end
def self.nbgenscouple
joins('left join twopeople l on l.person_id = people.id or l.otherperson_id = people.id').joins('left join linkspousepeople ll on ll.twoperson_id = l.id').joins('left join parentlinks lov on ll.spouselink_id = lov.id').joins('left join people p1 on p1.id = l.person_id').joins('left join people p2 on p2.id = l.otherperson_id').select('lov.*, people.*,l.*,ll.*,p1.*,p2.*,p1.id as p1,p2.id as p2, p1.name as p1name,p2.name as p2name,p1.sexe as p1sexe, p2.sexe as p2sexe')


end
def self.nbgensfamille
joins('left join twopeople l on l.person_id = people.id or l.otherperson_id = people.id').joins('left join linkfamilypeople ll on ll.twoperson_id = l.id').joins('left join parentlinks fam on ll.familylink_id = fam.id').joins('left join people p1 on p1.id = l.person_id').joins('left join people p2 on p2.id = l.otherperson_id').select('fam.*, people.*,l.*,ll.*,p1.*,p2.*,p1.id as p1,p2.id as p2, p1.name as p1name,p2.name as p2name,p1.sexe as p1sexe, p2.sexe as p2sexe')


end
has_many :sailorhaveattitudesintasks, foreign_key: 'person_id'
has_many :artistpeople, foreign_key: 'person_id'
has_many :artspratiques, :source => "artobject",:through => :artistpeople, class_name: 'Artobject'
belongs_to :nationality, optional: true

def githubnew
self.githubaccounts.new(nameowner: self.name)
end
def twitternew
self.twitteraccounts.new(name: self.name)

end
def has_currently_lover?
linkspousepeople.select('linkspousepeople.begindating as begin, linkspousepeople.enddating as end').select {|x|x.begin && !x.end}.length > 0
rescue
false
end
def bi
linkspousepeople.joins('left join twopeople tp on tp.id = linkspousepeople.twoperson_id').joins('left join people otherperson on otherperson.id = tp.otherperson_id').joins('left join people person on person.id = tp.person_id').select('otherperson.sexe as sexeperson1, person.sexe as sexeperson2').select {|x|x.sexeperson1 == x.sexeperson2}.length > 0 && linkspousepeople.joins('left join twopeople tp on tp.id = linkspousepeople.twoperson_id').joins('left join people otherperson on otherperson.id = tp.otherperson_id').joins('left join people person on person.id = tp.person_id').select('people.*,linkspousepeople.*,otherperson.sexe as sexeperson1, person.sexe as sexeperson2').select {|x|x.sexeperson1 != x.sexeperson2}.length > 0
rescue
[]
end
def hetero
linkspousepeople.joins('left join twopeople tp on tp.id = linkspousepeople.twoperson_id').joins('left join people otherperson on otherperson.id = tp.otherperson_id').joins('left join people person on person.id = tp.person_id').select('otherperson.sexe as sexeperson1, person.sexe as sexeperson2').select {|x|x.sexeperson1 == x.sexeperson2}.length == 0 && linkspousepeople.joins('left join twopeople tp on tp.id = linkspousepeople.twoperson_id').joins('left join people otherperson on otherperson.id = tp.otherperson_id').joins('left join people person on person.id = tp.person_id').select('otherperson.sexe as sexeperson1, person.sexe as sexeperson2').select {|x|x.sexeperson1 != x.sexeperson2}.length > 0
end

def homo
linkspousepeople.joins('left join twopeople tp on tp.id = linkspousepeople.twoperson_id').joins('left join people otherperson on otherperson.id = tp.otherperson_id').joins('left join people person on person.id = tp.person_id').select('otherperson.sexe as sexeperson1, person.sexe as sexeperson2').select {|x|x.sexeperson1 != x.sexeperson2}.length > 0
end
def musicianpeople
artistpeople.joins(:musicalinstrument)
end
def self.nbpages
all.each_slice(20).to_a.length - 1
end
def self.bypage(i)
all.each_slice(20).to_a[i]
end
def artisticpeople
artistpeople.joins(:ustensile)
end
def self.findbyid(i)
where(id: i)
end
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
def self.findactor(tv,namesailor,film)
    name=namesailor.to_s
    name='%'+name.downcase.gsub(' ','%')+'%'

   joins('left join phavefilms f on f.person_id = people.id').joins('left join tvserieshaveactors tv on tv.person_id = people.id').joins('left join things ser on ser.id = tv.tvseries_id').select('f.person_id as personidfilm,f.id as fid, f.film_id as filmid, people.id as pid,tv.person_id as tvpersonid, tv.tvseries_id as tvseriesid,ser.id as serid,people.name,people.image,people.id as id').where(["(lower(people.name) like ? and tv.tvseries_id = ?) or (lower(people.name) like ? and f.film_id = ?)",name,tv,name,film])


end
def self.lookforname(n)
      s="%#{n.squish.strip.downcase.gsub(' ','%')}%"
      Person.joins('left join tvserieshaveactors a on a.person_id = people.id').joins('left join surnames on surnames.id = a.surname_id').select('people.*, surnames.*,a.*,(case when people.name is not null then people.name else surnames.name end) as name,people.id').where('lower(surnames.name) like ? or lower(people.name) like ? or lower(people.lastname) like ? or lower(people.firstnames) like ?',s,s,s,s)
end
def self.bynameorcollection(n,c)
      if n
      s="%#{n.squish.strip.gsub(' ','%')}%"
      Person.where('lower(name) like ? or lower(lastname) like ? or lower(firstnames) like ?',s,s,s)

      elsif c
        co=Collection.find(c)
        co.people
      end

end
  def self.findbyid(n)
    Person.where('id' => n)
  end
  def self.find1pplbyid(n)
    Person.where('id' => n)
  end
  def self.findbyname(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    n2=I18n.transliterate(n1)
    str1='lower(name) like ? or lower(firstnames) like ? or lower(lastname) like ?'
    Person.where([str1+' or '+str1]+Array.new(3,n1)+Array.new(3,n2))
    else
    []
    end
  end
  def self.find1ppl(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    n2=I18n.transliterate(n1)
    str='lower(name) like ? or lower(firstnames) like ? or lower(name) like ?'
    Person.where([Array.new(2,str).join(' or ')]+Array.new(3,n1)+Array.new(3,n2))
    else
    []
    end
  end

  def self.sortalphabetical
    order(name: :asc)
  end
    def self.findthem(o)
      #joins('left join events place on place.id = posts_surnames.place_id').joins('left join profilepictures pp on pp.id = posts_surnames.profilepic_id').joins('left join things t on t.id = posts_surnames.thing_id').joins('left join people person on person.id = posts_surnames.person_id').joins('left join people avatar on posts_surnames.sailor_id = avatar.id').joins('left join people rec on rec.id = posts_surnames.destinataire_id').joins('left join surnames s on s.id = posts_surnames.surname_id').select('posts_surnames.*,avatar.*, person.*, rec.*, s.*, posts_surnames.content_fr as pscont, posts_surnames.id as psid').where(['avatar.name like ? or posts_surnames.content_fr like ? or posts_surnames.content_en like ? or posts_surnames.content_de like ? or rec.name like ? or s.name like ? or t.name like ? or pp.nameimage like ? or place.name like ?']+Array.new(9,o))
    joins('left join tasks place on place.id = posts_surnames.place_id').joins('left join profilepictures pp on pp.id = posts_surnames.profilepic_id').joins('left join things t on t.id = posts_surnames.thing_id').joins('left join people person on person.id = posts_surnames.person_id').joins('left join people avatar2 on posts_surnames.speaklike_id = avatar2.id').joins('left join people avatar on posts_surnames.sailor_id = avatar.id').joins('left join people rec on rec.id = posts_surnames.destinataire_id').joins('left join surnames s on s.id = posts_surnames.surname_id').select('posts_surnames.*,avatar.*, person.*, rec.*, s.*, posts_surnames.content_fr as pscont, posts_surnames.id as psid, (case when s.name is not null and length(s.name) > 0 then s.name else avatar2.name end) as myname1').where(['length(s.name) > 0 and avatar.name like ? or posts_surnames.content_fr like ? or posts_surnames.content_en like ? or posts_surnames.content_de like ? or rec.name like ? or s.name like ? or t.name like ? or pp.title like ? or place.name like ? or avatar2.name like ?']+Array.new(10,o))

  end

  def celebrity
    
  end
  def imagechevalier
    "/assets/chevalier.png"
  end
  def imagemaillot
    self.sexe == "F" ? "/assets/maillotfemme.png" : "/assets/maillothomme.png"
  end
  def saveimage
if self.myprofilepic
self.image=self.myprofilepic.read_attribute(:image)
  end
  end
  def savephrasesandwords
    if recordmyphrasesandwords && recordmywords && recordmyphrasesandwords.length > 0 && recordmywords.length > 0 && recordmyphrasesandwords.length == recordmywords.length
      @i=0
      self.recordmyphrasesandwords.length.times do
      self.aidememoires.new do |x|
#        x.phrase=Phrase.find(self.myownphrasesandwords[@i]) rescue Phrase.new(content: self.contentmyownphrasesandwords[@i])
#        x.word = Word.find(self.myownwords[@i]) rescue Word.new(word: self.contentmyownwords[@i])
        paw=self.contentmyownphrasesandwords[@i].strip.squish
        w=self.contentmyownwords[@i].strip.squish
        x.recordedphrase=Recording.new(name: self.recordmywords[@i], content: (paw.length > 0 ? paw : x.phrase.content))
        x.recordedword=Recording.new(name: self.recordmyphrasesandwords[@i], content: (paw.length > 0 ? paw : x.word.content))
        
      end
      @i+=1
      end
      
    end
    
  end
  def self.ceuxdestvseries
    joins('left join tvserieshaveactors a on a.person_id = people.id').where('a.tvseries_id is not null')
    end
  def self.notfromtvseries(name =nil)
    joins('left join tvserieshaveactors a on a.person_id = people.id').where(['a.tvseries_id is null '+(name.length > 0 ? Array.new(name.length,' or people.name like ?').join(' ') : "")]+name.map{|x|"%#{x.gsub(' ','%')}%"})
    end
  def self.notfrommovies
    joins('left join phavefilms fi on fi.person_id = people.id').where('fi.film_id is null')
    end
  def self.pasceuxdestvseries
    joins('left join tvserieshaveactors a on a.person_id = people.id').where('a.tvseries_id is null')
    end
  def recordmyphrases=(x)
    x.each do |y|
      phrases.new(name: y)
    end
  end
  def recordmynames=(x)
    x.each do |y|
      mynames.new(name: y)
    end
  end
  def myownsurnames=(x)
    p "mynames"
    p x
    x.each_with_index do |rec,j|
      if rec.to_i > 0
        person=Person.find(rec)
        mynames.select {|x| !x.id}[j].content = person.name
      end
    end
  end
  def contentmyownsurnames=(x)
    p "content my names"
    p x
    x.each_with_index do |rec,j|
      surnameval=rec.squish.strip
      if surnameval.length > 0
        mynames.select {|x| !x.id}[j].content = surnameval
      end
    end

  end
  def myownphrases=(x)
    p "myphrases"
    p x
    x.each_with_index do |rec,j|
      if rec.to_i > 0
        phrase=Phrase.find(rec)
        phrases.select {|x| !x.id}[j].content = phrase.content
      end
    end
  end
  def contentmyownphrases=(x)
    p "content myphrases"
    p x
    x.each_with_index do |rec,j|
      phraseval=rec.squish.strip
      if phraseval.length > 0
        phrases.select {|x| !x.id}[j].content = phraseval
      end
    end

  end
  def myfavtasks
    todojobs.select {|x| x.linkedtasksreverses.length == 0}
  end
  def fullname
    "#{firstnames} #{lastname}"
  end
  def self.chosephotofromalbum
    Person.joins(:album_photos).sample
  end
  def self.allthosepeoplewithcollections(id=nil)
    col=Person.joins(:collections).select(' people.*,collections.*, collections.name as colname, people.name as pplname, people.id as peopleid').group("people.id")
    if id
    col=Person.left_joins(:collections).select(' people.*,collections.*, collections.name as colname, people.name as pplname, people.id as peopleid').group("people.id")
      col=col.where("collections.id" => id)
    end
    
    col
  end
  def dernierspostschine
    Post.all.joins(:my_posts_surnames).where("posts_surnames.speaklike_id = ? or posts_surnames.person_id = ?",self.id,self.id).where('lower(posts.content_fr) like ? or lower(posts.content_en) like ? or lower(posts.content_de) like ? or lower(posts.content_fr) like ? or lower(posts.content_en) like ? or lower(posts.content_de) like ?','%chine%','%chine%','%chine%','%china%','%china%','%china%')
  end
  def myfacebookpage
    'https://www.facebook.com/'+facebook.split('/').last.split('=').last+'/friends'
  rescue
    nil
  end


  def self.afficherceuxla(chosen = nil,post = nil,mondestinataire=nil)
      @people = []
    if post && post.surnames[0]
      @str = post.surnames[0].name.strip.squish
      if @str.length > 0
        mystring=@str.downcase.gsub(' ','%')
      @people+=Person.where('lower(name) like ? or lower(description) like ?',"#{@str.downcase.gsub(' ','%')}%","#{mystring}%")
      end
      p @people
    end
    if mondestinataire
      @mystr = mondestinataire.strip.squish
      if @mystr.length > 0
        mystring=@mystr.downcase.gsub(' ','%')
      @people+=Person.where('lower(name) like ? or lower(description) like ?',"#{@mystr.downcase.gsub(' ','%')}%","#{mystring}%")
      end
      p @people
    end
    if post && post.my_posts_surnames[0] && post.myownsurnames[0] && post.myownsurnames[0].name



      @yourstr = post.myownsurnames[0].name.strip.squish
      if @yourstr.length > 0
        mystring=@yourstr.downcase.gsub(' ','%')
      @people+=Person.where('lower(name) like ? or lower(description) like ?',"#{mystring}%","#{mystring}%")
      end
      p @people
    end
    ok = ((@yourstr && @yourstr.length >= 3) ||(@str && @str.length >= 3) || (mondestinataire && mondestinataire.length >= 3) || (@mystr && @mystr.length >= 3))
    if chosen && chosen.length > 0 && ok
      (chosen.select {|x|x}+@people.to_a).uniq
    elsif @people && @people.length > 0 && ok
      (@people.to_a).uniq
    else
    #Person.all
      #(@people.to_a).uniq
      Person.where(id: [10])
    end
  end
  def self.moussaillons
    left_joins(:sailorjobs).select('people.*')
  end
  has_many :personaljingles, class_name: "Thisisjingle"
    #accepts_nested_attributes_for :personaljingles,  :allow_destroy => true
  accepts_nested_attributes_for :jingles,  :allow_destroy => true

#
  def scheduledtasksoftheday
    d1=Date.today.at_beginning_of_day
    d2=Date.tomorrow.at_beginning_of_day
    self.scheduledtasks.where('date_and_time > ? and date_and_time < ?',d1,d2)
  end
def updateimage=(file)
      pathfile = "#{Rails.root.to_s}/app/assets/images/"+self.image
    filename =self.image
    namefile="#{(rand()*100000000).to_i}.#{filename.split('.')[1]}"
      loc='photos'
    image =Post.cloud([loc,namefile].join('/'),pathfile)
    if image
    self.write_attribute(:image,image)
    #    permanentprofilepictures << Profilepicture.find_or_create_by(:image => image, :title => name)

    else
      
    #permanentprofilepictures << Profilepicture.find_or_create_by(:image => namefile, :title => name)

  end

    save
end

def hasreactions
  self.reactions.count > 0
end
def self.withoutanycollection
joins(:collections).where(collections:[])
end
def imagepath
  read_attribute(:image)
end

 def defaultprofilepic
  image2=self.read_attribute(:image)
  if image2.to_s.include?('http')
    
  image2 || "imagedelutilisateurinconnu.png"
  else
  "/assets/#{image2}" || "imagedelutilisateurinconnu.png"
  end
 end
 def self.allmyprofilepics
   Person.where(id: select('people.id')).map do |person|
     Profilepicture.find_or_create_by(image: person.imagepath, title: person.name)
   end
   
 end
 def image

  image2=(self.profilepics.length > 0 ? (self.myprofilepic ? self.myprofilepic.image : nil) : nil ) rescue nil
  image2||=self.read_attribute(:image)
  if image2.to_s.include?('http')
    
  image2 || "imagedelutilisateurinconnu.png"
  else
  "/assets/#{image2}" || "imagedelutilisateurinconnu.png"
  end
end
 def facebook
   f=read_attribute(:facebook)
    f && f.length > 0 ? f : nil
 end
def image=(file)
  if !file.is_a?(String)
      pathfile = file.tempfile.path
      p pathfile
      name =file.original_filename
      ext = name.include?('.') ? name.split('.').last : ''
      filename = DateTime.now.to_s.gsub(/[^0-9]/, '')+'.'+ext
      self.write_attribute(:image,filename)
      loc='photos'
      abs="/app/assets/images/#{filename}"
      p abs
      #Post.cloud([loc,filename].join('/'),abs)
      `mv #{pathfile} #{Rails.root.to_s+abs}`
  else
filename=file
          self.write_attribute(:image,file)

  end
#  if file
#    ppic = Profilepicture.find_or_create_by(title: self.name, image: self.read_attribute(:image))
#    self.permanentprofilepictures << ppic
#end

end
def month=(m)
  write_attribute(:month_met, m)
end
def year=(m)
  write_attribute(:year_met, m)
end

end
