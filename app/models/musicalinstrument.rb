class Musicalinstrument < Artobject
translates :name
has_many :barshavemusicalinstruments
has_many :bars, through: :barshavemusicalinstruments

def self.findbyid(n)
where("id" => n)
end
def self.findbyname(n)
      o='%'+n.gsub(' ','%').downcase+'%'
      
        where(["lower(name_en) like ? or lower(name_fr) like ? or lower(name_de) like ?",o,o,o])
end

end
