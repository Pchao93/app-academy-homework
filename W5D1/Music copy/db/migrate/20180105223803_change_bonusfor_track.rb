class ChangeBonusforTrack < ActiveRecord::Migration[5.1]
  def change
    change_column :tracks, :bonus, :boolean, null: false, default: false
  end
end
