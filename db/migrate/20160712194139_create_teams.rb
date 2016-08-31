class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :category
      t.string :club
      t.string :avatar
      t.string :practice_address
      t.string :game_address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
