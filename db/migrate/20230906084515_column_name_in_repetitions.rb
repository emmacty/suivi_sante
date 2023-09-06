class ColumnNameInRepetitions < ActiveRecord::Migration[7.0]
  def change
    change_table :repetitions do |t|
      t.rename :date, :start_time
    end
  end
end
