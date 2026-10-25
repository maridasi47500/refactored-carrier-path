class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
   def self.findbyname(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    #n1=I18n.transliterate(n1)
    where(['lower(name) like ?']+Array.new(1,n1))
    else
    []
    end
  end

     def self.findbyid(i)
    where(id: i)
  end
     def image
       

  read_attribute(:image)


end
def image=(file)
  if file.is_a?(String)
    self.write_attribute(:image,file)
  else
     uploaded_io=file
      myname =file.original_filename
      ext = myname.include?('.') ? myname.split('.').last : ''
      filename = DateTime.now.to_s.gsub(/[^0-9]/, '')+'.'+ext

File.open(Rails.root.join('app', 'assets/images', filename), 'wb') do |file|
  file.write(uploaded_io.read)

end
          self.write_attribute(:image, filename)

  end
end
end
