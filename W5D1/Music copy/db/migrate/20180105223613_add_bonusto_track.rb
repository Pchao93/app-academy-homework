class AddBonustoTrack < ActiveRecord::Migration[5.1]
  def change

    add_column :tracks, :bonus, :boolean, null: false

    add_index :tracks, :album_id
  end
end
