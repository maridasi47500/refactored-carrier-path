class CreateCurrentjoboffers < ActiveRecord::Migration[8.1]
  def change
    create_table :currentjoboffers do |t|
      t.string :largepic
      t.string :smallpic
      t.references :place, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true
      t.string :type_de_contrat
      t.string :statut
      t.string :salaire
      t.string :annuel
      t.string :temps_de_travail
      t.string :duree_du_contrat
      t.references :job, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
