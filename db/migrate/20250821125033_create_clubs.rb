class CreateClubs < ActiveRecord::Migration[7.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :location
      t.integer :championships

      t.timestamps
    end
  end
end
