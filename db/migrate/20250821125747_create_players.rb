class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.float :ppgavg
      t.integer :mvps
      t.boolean :active
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
