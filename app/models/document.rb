class Document < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_one_attached :photo, presence: true
  has_one_attached :document
  validates :title, presence: true
  validates :date, presence: true
  # validates :category, inclusion: { in: ["Imagerie médicale", "Compte-rendu", "Ordonnance", "Ordonnance de biologie"] }
  validates :doctor, presence: true
  enum document_type: { imagerie_medicale: 1, compte_rendu: 2, ordonnance: 3, ordonnance_de_biologie: 4}
  scope :filter_by_category, -> (category) { where document_type: category }
  include PgSearch::Model

  pg_search_scope :global_search,
  against: [:title, :date, :category],
  associated_against: {
    patient: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
