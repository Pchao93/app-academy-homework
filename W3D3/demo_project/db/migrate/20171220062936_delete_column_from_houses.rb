class DeleteColumnFromHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :type
  end
end
