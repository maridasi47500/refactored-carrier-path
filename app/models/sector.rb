class Sector < ApplicationRecord
has_many :sectorshavebacseries
has_many :bacseries, through: :sectorshavebacseries
has_many :sectorshaveadmissionfiles
has_many :admissionfiles, through: :sectorshaveadmissionfiles
has_many :sectorshavecities
has_many :cities, through: :sectorshavecities
belongs_to :field
def mysectors
Sector.where(field_id: self.field_id)
end
def self.findbycriterion(city,field,seriebac)
if city
joins(:cities).where('cities.name like ?','%'+city.gsub(' ','%')+'%').select('cities.*, cities.name as cityname, sectors.*')
elsif field
joins(:field).where(['lower(fields.name) like ?','%'+field.gsub(' ','%').downcase+'%']).select('fields.*, fields.name as fieldname,sectors.*')
elsif seriebac
joins(:bacseries).where('bacseries.name like ?','%'+seriebac.gsub(' ','%').downcase+'%').select('bacseries.*, bacseries.name as fieldname,sectors.*')

end
rescue => e
p e.message
end

end
