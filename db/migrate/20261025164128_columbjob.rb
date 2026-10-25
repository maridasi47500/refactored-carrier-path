class Columbjob < ActiveRecord::Migration[8.1]
  def change
    remove_column :currentjoboffers, :annuel
    remove_column :currentjoboffers, :post_id
    rename_column :currentjoboffers, :salaire, :salaire_annuel
  end
end
