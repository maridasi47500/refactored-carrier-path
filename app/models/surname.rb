class Surname < ApplicationRecord
has_many :surnamehavepeople
has_many :people, through: :surnamehavepeople
def self.nbpages
all.each_slice(10).to_a.length - 1
end
  def self.findbyname(n)
    if n.to_s.length > 0
    n1="%#{n.to_s.downcase.gsub(' ','%')}%"
    #n1=I18n.transliterate(n1)
    where('lower(name) like ?',n1)
    else
    []
    end
  end

def self.bypage(i)
all.each_slice(10).to_a[i]
end


  has_one :posts_surname
  belongs_to :meaning, foreign_key: "interpretation_id", class_name: "Meaningsforsurname", optional: true
def self.findbyid(n)
where(id: n)
end
def self.find_by_id(n)
where(id: n)
end
def self.find_by_name(n)
      o='%'+n.gsub(' ','%').downcase+'%'
        where("lower(name) like ?",o)
end

  def my_relation
  image=self.read_attribute(:my_relation)
  image.to_s.length > 0 ? image : nil
  end
  def my_relation_surname
  my_relation && my_relation.to_s.length > 0 ? my_relation : "comme si il-elle était"

  end
  def my_relation=(myrel)
  write_attribute(:my_relation,myrel)
  end
  def name
  image=self.read_attribute(:name)
  image.to_s.length > 0 ? image : nil
  end
   def image
  #image=self.read_attribute(:image)
  #image || ""
    #image = self.person.read_attribute(:image)
  #    post=self.posts_surname.post
  #    surnames = post ? Surname.joins(:posts_surname).where(posts_surname: post.posts_surnames).index(self) : nil
  #          mouss=post ? post.moussaillonsdecepost : nil
  #    ind=surnames ? (mouss[surnames]||mouss.last) : nil
  #    indimage = ind ? ind.image : nil
  #    imagepostsurname = self.posts_surname.person ? self.posts_surname.person.image : self.posts_surname.image
  #    image


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



#      pathfile = file.tempfile.path
#    filename =file.original_filename
#    namefile="#{(rand()*100000000).to_i}.#{filename.split('.')[1]}"
#      loc='photos'
#abs="/app/assets/images/"+namefile
#p abs
#    #image =Post.cloud([loc,filename].join('/'),pathfile)
#    if image
#    self.write_attribute(:image,image)
#    end
end
end

end
