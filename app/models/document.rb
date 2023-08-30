class Document < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_one_attached :document
  validates :title, presence: true
  validates :date, presence: true
  enum :category, { medical_image: 0, reporting: 1, prescription: 2, referral_for_test: 3 }
  validates :doctor, presence: true
end
