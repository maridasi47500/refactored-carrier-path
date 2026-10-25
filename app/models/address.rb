class Address < ApplicationRecord
has_and_belongs_to_many :posts, :join_table => :postshaveaddresses
    accepts_nested_attributes_for :posts, allow_destroy: true

  belongs_to :country, optional: true
  belongs_to :city, optional: true
  belongs_to :state, optional: true
def myaddress
  str = ""
  [city,country,state].each do |object|
    
  if object
  str += object.name
  str+= ", "
  end
  end
  str += address
  str
end
end
