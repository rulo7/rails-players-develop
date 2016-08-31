class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :surname
      t.integer :position
      t.date :birthday
      t.float :height
      t.float :weight
      t.text :description
      t.string :phone
      t.string :email
      t.integer :zip
      t.string :nationality
      t.integer :gender
      t.string :avatar

      t.references :team, index: true

      t.timestamps
    end
  end
end
