class ChangeUserIdInPatients < ActiveRecord::Migration[7.0]
  def change
    change_column :patients, :user_id, :integer, null: true, foreign_key: true
  end
end
