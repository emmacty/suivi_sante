class RemoveDurationFromReminders < ActiveRecord::Migration[7.0]
  def change
    remove_column :reminders, :duration, :date
  end
end
