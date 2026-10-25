class Laundrycaptain < ApplicationRecord
belongs_to :laundryjiramaperson, foreign_key: 'laundryjiramaperson_id'
belongs_to :laundryjiramaotherperson, foreign_key: 'laundryjiramasuperiorgradeperson_id', class_name: 'Laundryjiramaperson'
end
