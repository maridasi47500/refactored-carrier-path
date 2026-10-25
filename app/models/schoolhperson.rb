class Schoolhperson < ApplicationRecord

belongs_to :person
belongs_to :school
validates_uniqueness_of :person_id, scope: :school_id
end
