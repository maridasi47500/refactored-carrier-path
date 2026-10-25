class AddPersonIdToCurrentjoboffers < ActiveRecord::Migration[8.1]
  def change
    add_reference :currentjoboffers, :person, null: false, foreign_key: true
  end
end
