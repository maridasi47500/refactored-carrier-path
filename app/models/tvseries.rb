class Tvseries < Thing
translates :name
  has_many :attitudetvseries,  foreign_key: 'person_id'


  has_many :tvserieshaveactors
accepts_nested_attributes_for :tvserieshaveactors, allow_destroy: true
  has_many :actors, :through => :tvserieshaveactors, class_name: "Person"
  def addanactor=(id)
    self.actors << Person.where(id: id)
  end
  def self.findbyname(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    #n1=I18n.transliterate(n1)
    where('lower(name_'+I18n.locale.to_s+') like ?',n1)
    else
    []
    end
  end

  def linkto
    self.attitude || self.post
  end
        def self.findbyid(o)
                where("id"=>o)
        end

end
