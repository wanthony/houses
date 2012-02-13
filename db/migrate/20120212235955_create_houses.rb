class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
