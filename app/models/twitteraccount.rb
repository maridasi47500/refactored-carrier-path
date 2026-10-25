class Twitteraccount < ApplicationRecord
def self.searchintweets(z)

#Tweet.transaction do
#    Twitteraccount.all.select {|x| $client.user_timeline(x.username,count:10) rescue nil}.map {|x| $client.user_timeline(x.username,count:100)}.flatten.map{|x| Tweet.new(content: x.full_text, username: x.user.name, place: x.place.full_name+' '+x.user.location,created_at: x.created_at,hits:0)}.each do |g|
#g.save
#rescue 
#p "existe deja"
#end
#end
y='%'+z.downcase.gsub(' ','%')+'%'
y1=I18n.transliterate(y)
str='lower(content) like ? or lower(username) like ? or lower(place) like ? or lower(created_at) like ?'
Tweet.where(hits:0).where([str+' or '+str,y1,y1,y1,y1,y,y,y,y])

end
  belongs_to :person, optional: true
end
