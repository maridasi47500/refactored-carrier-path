class Mymap < ApplicationRecord
has_many :mymapscoords

def image
    i=read_attribute(:image)
    if i && i.include?('http')
      i
    elsif i
      "/assets/"+i
    else
      "/assets/iconhumain.png"
    end
end

end
