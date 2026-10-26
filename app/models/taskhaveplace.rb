class Taskhaveplace < ApplicationRecord
  belongs_to :task
  belongs_to :place
end
