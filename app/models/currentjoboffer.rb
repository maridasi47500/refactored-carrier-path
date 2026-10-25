class Currentjoboffer < ApplicationRecord
  belongs_to :place
  belongs_to :field
  belongs_to :job
  accepts_nested_attributes_for :place
  accepts_nested_attributes_for :field
  accepts_nested_attributes_for :job
  belongs_to :post
  belongs_to :person, optional: true
  def smallpic
    
  read_attribute(:smallpic)


end
def smallpic=(file)
  if file.is_a?(String)
    self.write_attribute(:smallpic,file)
  else
     uploaded_io=file
      myname =file.original_filename
      ext = myname.include?('.') ? myname.split('.').last : ''
      filename = DateTime.now.to_s.gsub(/[^0-9]/, '')+'.'+ext

File.open(Rails.root.join('app', 'assets/images', filename), 'wb') do |file|
  file.write(uploaded_io.read)

end
          self.write_attribute(:smallpic, filename)
  end
  end
  def largepic
    
  read_attribute(:largepic)


end
def largepic=(file)
  if file.is_a?(String)
    self.write_attribute(:largepic,file)
  else
     uploaded_io=file
      myname =file.original_filename
      ext = myname.include?('.') ? myname.split('.').last : ''
      filename = DateTime.now.to_s.gsub(/[^0-9]/, '')+'.'+ext

File.open(Rails.root.join('app', 'assets/images', filename), 'wb') do |file|
  file.write(uploaded_io.read)

end
          self.write_attribute(:largepic, filename)
  end
  end
def myplace
#Place.where(id: self.place_id)
Currentjoboffer.where(place_id: self.place_id)
end
def myjob
#Job.where(id: self.job_id)
Currentjoboffer.where(job_id: self.job_id)
end
def myfield
#Field.where(id: self.field_id)
Currentjoboffer.where(field_id: self.field_id)
end
  
end
