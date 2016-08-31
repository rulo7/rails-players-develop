class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :surname
      t.string :level
      t.date :birthday
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
