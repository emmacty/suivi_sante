class CreateBloodtests < ActiveRecord::Migration[7.0]
  def change
    create_table :bloodtests do |t|
      t.string :title
      t.string :doctor
      t.string :laboratory
      t.date :date
      t.references :patient, null: false, foreign_key: true
      t.string :blood_count
      t.string :iron
      t.string :protein
      t.string :glucose
      t.string :sedimentation_rate
      t.string :lipid
      t.string :renal
      t.string :hepatic

      t.timestamps
    end
  end
end
