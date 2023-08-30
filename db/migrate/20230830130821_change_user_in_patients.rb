class ChangeUserInPatients < ActiveRecord::Migration[7.0]
  def change
    change_column :patients, :user_id, :bigint, null: true, foreign_key: true
  end
end
