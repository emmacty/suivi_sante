class ChangeReminderSchema < ActiveRecord::Migration[7.0]
  def change
    change_table :reminders do |t|
      t.rename :date, :start_time
      t.datetime :end_time
    end
  end
end
