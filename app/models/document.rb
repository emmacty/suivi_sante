class Document < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_one_attached :photo
  has_one_attached :document
  validates :title, presence: true
  validates :date, presence: true
  validates :category, presence: true, inclusion: { in: ["Imagerie médicale", "Compte-rendu", "Ordonnance", "Ordonnance de biologie"] }
  validates :doctor, presence: true
end
