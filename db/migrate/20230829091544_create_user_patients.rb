class CreateUserPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :user_patients do |t|
      t.references :user, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
