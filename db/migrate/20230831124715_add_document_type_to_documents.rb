class AddDocumentTypeToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :documents, :document_type, :integer
  end
end
