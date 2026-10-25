class CreatePosthasjobpositions < ActiveRecord::Migration[8.1]
  def change
    create_table :posthasjobpositions do |t|
      t.references :post, null: false, foreign_key: true
      t.references :currentjoboffer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
