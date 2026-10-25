class Peoplehavejob < ApplicationRecord
belongs_to :person
belongs_to :job
validates_uniqueness_of :person_id, scope: :job_id
end
