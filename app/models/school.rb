class School < Thing
has_many :schoolhpeople
has_many :people, through: :schoolhpeople
end
