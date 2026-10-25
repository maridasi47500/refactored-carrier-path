class MyOtherValidator < ActiveModel::Validator
  def validate(record)
    p record.errors
    if record && record.peoplethatarereacting &&record.nbpeople && record.nbpeople != record.peoplethatarereacting
      record.errors.add :base, "nb people you enter (#{record.peoplethatarereacting}) must be equal to number of people in the text (#{record.nbpeople})"
    end
  end
end

class Reaction < ApplicationRecord
  belongs_to :emotion, optional: true
  belongs_to :speaker, optional: true, foreign_key: "speaker_id", class_name: "PostsSurname"
  has_one :my_surname, through: :speaker, class_name: "Surname", source: :surname
  has_and_belongs_to_many :reactingpeople, class_name: 'Person'
def self.findbyid(x)
where(id: x)
end
def self.findbyname2(n)
self.findbyname(n).to_a.group_by {|x|[x.reactionid,x.sentence]}.to_a.map{|a,b|[a,b.map{|y|y.personname}.to_sentence]}
end
def self.findbyname(n)
      o='%'+n.gsub(' ','%').downcase+'%'

        joins('left join posts_surnames_reactions ps on ps.reaction_id = reactions.id').joins('left join posts_surnames pss on pss.id = ps.posts_surname_id').joins('left join people p on p.id = pss.person_id').joins('left join surnames s on s.id = pss.surname_id').joins('left join reactions_texts rt on rt.id = reactions.reaction_id').where('ps.posts_surname_id' => PostsSurname.findthem(o).as_json.pluck('psid')).select('reactions.*,s.*,pss.*, ps.*,p.*,rt.*,(case when p.id is not null then p.name else s.name end) as personname, reactions.id as reactionid,rt.name as sentence')+joins('left join posts_surnames_reactions ps on ps.reaction_id = reactions.id').joins('left join posts_surnames pss on pss.id = ps.posts_surname_id').joins('left join surnames s on s.id = pss.surname_id').joins('left join people p on p.id = pss.person_id').select('reactions.*, s.*,ps.*,pss.*,rt.*,p.*,(case when p.id is not null then p.name else s.name end) as personname, rt.name as sentence,reactions.id as reactionid').joins('left join reactions_texts rt on rt.id = reactions.reaction_id').where(["lower(rt.name) like ? or lower(s.name) like ?",o,o])


end
def self.nbpages
all.each_slice(10).to_a.length - 1
end
def self.bypage(i)
all.each_slice(10).to_a[i]
end

  belongs_to :myownreaction, foreign_key: "reaction_id", class_name: "ReactionsText"
#tu pourrais utiliser la classe Phrase pour la classe ReactionsText ou tu peux garder comme ca si je veux pas que ca se melange
has_and_belongs_to_many :reactivepeople, class_name: 'PostsSurname'
has_many :somepeople, through: :reactivepeople, source: :person
has_many :someotherpeople, through: :reactivepeople, source: :sailor
  has_many :surnames, through: :reactivepeople
  accepts_nested_attributes_for :speaker, allow_destroy: true
  accepts_nested_attributes_for :surnames, allow_destroy: true
  accepts_nested_attributes_for :reactivepeople, allow_destroy: true
  validates_with MyOtherValidator
def self.reactionbyid(n)
where(id: n)
end
def self.mybestreactions(n)
where("lower(name) like ?", "%#{n.downcase.gsub(" ","%")}%")
end
  def surname
    s=self.read_attribute(:surname)
    s && s.length > 0 ? s : nil
  end
  def peoplethatarereacting
    p self
    p self.reactivepeople
    self.reactivepeople.length
  end
  def nbpeople
    self.name ? Reaction.mykeywords.map {|x|self.name.each_char.each_cons(x.size).map(&:join).count(x)}.sum : nil
  end
  def self.notall
    all.last(10)
  end
  def name
     (myownreaction ? myownreaction.name : nil) || read_attribute(:name) 

  end
  def guessreactionid
    reac=ReactionsText.where(name: self.name)[0]
    reac ? reac.id : nil
  end
  def self.mykeywords
    ['MARGHERITA','MOI','CLEMENT','LANDRY','LUCA','HARRY','ELSA','JULIE','ALICE','MARIE','ELLE','ILLE','LE ROBOT','PERSON','UN ROBOT','A ROBOT','LE ROBOT','BRAYARD','NICOLAS','THE ROBOT','THEO','NATHAN','MAX','CLARA','ALEXA','♥T♥H♥E♥O','VANESSA','NATACHA','OCEANE','LAURA','LILA','GAIA','ELENA','SERENA','ALIMA','ABIANGA','MAITO','CLEO','BETH','SYLAR','LYDIA']
  end
    def name_parts
    @myonlyname=self.name.to_s
    @myonlystr = 'MyOnlyKeyWord'
    Reaction.mykeywords.each do |n|
      @myonlyname=@myonlyname.gsub(n,@myonlystr)
    end
      @myonlyname.split(@myonlystr)
  end
      def afficherceuxlaaussi
somepeople+someotherpeople+(speaker  ? [speaker] : [])
  end
      def afficherceuxla
somepeople+someotherpeople+(speaker  ? [speaker] : [])
  end

def renderreactingpeople
  self.opposite ? self.reactivepeople.reverse.to_a : self.reactivepeople.to_a
end
def groupby
  read_attribute(:group_by) || 1
end
  def self.ofallkind
    ReactionsText.pluck(:name)
    #[ 
    #  "or perhaps PERSON meant",
    #  "or perhaps you meant PERSON",
    #  "what you PERSON about PERSON is untrue",
    #  "i agree with PERSON about PERSON",
    #  "PERSON made an error about PERSON",
    #  "i don't agree with what PERSON says about PERSON",
    #  "PERSON says about PERSON",
    #  "or perhaps PERSON thought otherwise about PERSON"
    #]
  end
end
