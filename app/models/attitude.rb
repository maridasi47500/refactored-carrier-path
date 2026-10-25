class Attitude < ApplicationRecord
has_and_belongs_to_many :tasks, :join_table => :taskshaveattitudes

def self.tasksameattitude
joins('left join taskshaveattitudes att on att.attitude_id = attitudes.id').joins('left join tasks mytasks on att.task_id = mytasks.id').select('att.*, attitudes.*,mytasks.*,mytasks.name as taskname,mytasks.id as taskid, attitudes.name as attitudename').joins('left join thistasknotthistasks h on h.task_id = mytasks.id or h.othertask_id = mytasks.id').select('h.*').where('h.id is not null')
end

attr_accessor :search
after_initialize :searchmyattitude
has_and_belongs_to_many :sailors, :join_table => :attitudeshavesailors, class_name: 'Person'
has_many :attitudehavefollowers
has_many :amateurs, through: :attitudehavefollowers, source: :person
  belongs_to :attitude, optional: true
    has_one :badattitude, class_name:'Attitude', foreign_key:'attitude_id'
  belongs_to :thing, optional: true
  validates :name, presence: {message: "What attitude did you have ?"}
  belongs_to :post, optional: true
  accepts_nested_attributes_for :attitude
  has_many :postlikecomments
  def self.findbyname(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    #n1=I18n.transliterate(n1)
    where('lower(name) like ?',n1)
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
	def self.findbyname(n)
	      o='%'+n.to_s.gsub(' ','%').downcase+'%'
	        where("lower(name) like ?",o)
	end
def image=(file)
    if file.is_a?(String)
    self.write_attribute(:image,file)
  else

      pathfile = file.tempfile.path
    filename =file.original_filename
      loc='photos'
abs="/app/assets/images/"+filename
p abs
File.open(Rails.root.join('app/assets', 'images', file.original_filename), 'wb') do |f|
  f.write(file.read)
end
write_attribute(:image,file.original_filename)

    end
end
def self.findbyid(i)
where(id: i)
end
def searchmyattitude
if self.search
if Attitude.findbyname(self.search).length == 0
    self.errors.add(:base, I18n.t("attitude.search", q: self.search))

end
end
end




end
