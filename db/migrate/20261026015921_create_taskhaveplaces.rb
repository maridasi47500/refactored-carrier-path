class CreateTaskhaveplaces < ActiveRecord::Migration[8.1]
  def change
    create_table :taskhaveplaces do |t|
      t.references :task, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
