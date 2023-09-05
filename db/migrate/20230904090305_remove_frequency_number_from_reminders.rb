class RemoveFrequencyNumberFromReminders < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :frequency_number, :integer
  end
end
