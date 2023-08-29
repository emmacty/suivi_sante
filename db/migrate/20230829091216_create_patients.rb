class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :color
      t.string :security_card_number
      t.integer :height
      t.integer :weight
      t.string :bloodtype
      t.string :gender
      t.string :address
      t.string :allergies
      t.string :chronic_illness
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
