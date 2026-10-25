class PeopleCity < ApplicationRecord
belongs_to :person
belongs_to :city
validates_uniqueness_of :person_id, scope: :city_id
end
