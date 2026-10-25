class Laundryjiramaperson < ApplicationRecord
belongs_to :alias
belongs_to :grade, class_name: 'Armygrade'
        def self.findbyid(o)
                where("id"=>o)
        end
        def self.findbyname(n)
              o='%'+n.to_s.gsub(' ','%').downcase+'%'
                joins('left join aliases a on a.id = laundryjiramapeople.alias_id').joins('left join people p on p.id = a.person_id').joins('left join users u on u.id = a.user_id').joins('left join armygrades g on laundryjiramapeople.grade_id = g.id').where(["lower(g.nom) like ? or lower(p.name) like ? or lower(u.name) like ?"]+Array.new(3,o)).select('laundryjiramapeople.*, g.*,u.*,a.*,p.*,(g.nom || " " ||u.name||" "||p.name) as nomspecial,laundryjiramapeople.id as idspecial')
        end


end
