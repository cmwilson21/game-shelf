class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :console, null: false, foreign_key: true
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
