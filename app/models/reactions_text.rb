class ReactionsText < ApplicationRecord
    def mynbpeople
    self.name ? Reaction.mykeywords.map {|x|self.name.each_char.each_cons(x.size).map(&:join).count(x)}.sum : nil


  end

def self.nbpages
all.each_slice(10).to_a.length - 1
end
def self.bypage(i)
all.each_slice(10).to_a[i]
end

end
