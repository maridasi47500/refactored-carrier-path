class Collection < ApplicationRecord
has_and_belongs_to_many :people
#validates_length_of :people, :minimum => 1, message: "There must be at least one element in the collection."
  has_and_belongs_to_many :mytasks, class_name: 'Task', :join_table => :collectionshavetasks
  accepts_nested_attributes_for :mytasks, allow_destroy: true
def mytask_ids=(ids)
  self.mytasks=Task.where(id: ids.uniq)
end
 def image
   image=self.read_attribute(:image).to_s
  if image.include?('http')
    image
  elsif image.to_s.length > 0
    "/assets/"+image
  else
    ""
   end
  #image
end
def image=(file)
      pathfile = file.tempfile.path
      p pathfile
      name =file.original_filename
      ext = name.include?('.') ? name.split('.').last : ''
      filename = DateTime.now.to_s.gsub(/[^0-9]/, '')+'.'+ext
      self.write_attribute(:image,filename)
      loc='photos'
      abs="/app/assets/images/#{filename}"
      p abs
      Post.cloud([loc,filename].join('/'),abs)
      `mv #{pathfile} #{Rails.root.to_s+abs}`
      self.save
rescue NoMethodError
if !pathfile
    self.write_attribute(:image,file)
end
      self.save

end


end
