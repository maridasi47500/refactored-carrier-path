class CreateWinningattitudes < ActiveRecord::Migration[6.0]
  def change
    create_table :winningattitudes do |t|
      t.text :content_fr
      t.text :content_en
      t.text :content_de
      t.timestamps
    end
    create_table :socialcontracts do |t|
      t.integer :person_id
      t.integer :otherperson_id
      t.timestamps
    end
    create_table :socialcontractshaveactions do |t|
      t.integer :socialcontract_id
      t.integer :action_id
      t.timestamps
    end
  end
end
