class ChangeDateInRepetitions < ActiveRecord::Migration[7.0]
  def change
    change_column :repetitions, :start_time, :datetime
  end
end
