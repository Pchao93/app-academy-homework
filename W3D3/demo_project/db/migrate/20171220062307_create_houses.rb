class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :type, null: false
      t.string :city, null: false
      t.timestamps
    end
  end
end
