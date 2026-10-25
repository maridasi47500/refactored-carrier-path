
class Alias < ApplicationRecord
  belongs_to :alias, class_name: 'Person', foreign_key: "person_id"
  belongs_to :user
  validates_uniqueness_of :person_id, scope: :user_id
has_many :mybookings
end
