class CreateRepetitions < ActiveRecord::Migration[7.0]
  def change
    create_table :repetitions do |t|
      t.date :date
      t.references :reminder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
