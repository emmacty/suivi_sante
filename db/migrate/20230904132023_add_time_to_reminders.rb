class AddTimeToReminders < ActiveRecord::Migration[7.0]
  def change
    add_column :reminders, :time, :time
  end
end
