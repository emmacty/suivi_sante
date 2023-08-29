class ChangeTypeInDocuments < ActiveRecord::Migration[7.0]
  def change
    rename_column :documents, :type, :category
  end
end
