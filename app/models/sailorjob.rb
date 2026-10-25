class Sailorjob < ApplicationRecord
  belongs_to :task
  belongs_to :sailor, class_name: 'Person', foreign_key: 'person_id'
  validates_uniqueness_of :task_id, :scope => :person_id
has_many :taskactionsailorjobs
has_many :taskactions, through: :taskactionsailorjobs

end
