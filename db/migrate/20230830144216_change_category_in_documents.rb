class ChangeCategoryInDocuments < ActiveRecord::Migration[7.0]
  def change
    change_column :documents, :category, :string
  end
end
