class Tvserieshaveactor < ApplicationRecord
  belongs_to :surname, optional: true
  belongs_to :tvseries
  belongs_to :actor, class_name: "Person", foreign_key: "person_id"
  accepts_nested_attributes_for :surname
  accepts_nested_attributes_for :tvseries
end
