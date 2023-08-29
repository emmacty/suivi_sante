class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :title
      t.string :content
      t.string :symbol
      t.date :date
      t.integer :frequency_number
      t.date :duration
      t.integer :frequency_unity
      t.references :patient, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
