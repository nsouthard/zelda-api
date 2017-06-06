class CreateZeldas < ActiveRecord::Migration[5.1]
  def change
    create_table :zeldas do |t|
      t.string :game
      t.string :character
      t.string :location

      t.timestamps
    end
  end
end
