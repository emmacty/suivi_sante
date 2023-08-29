class Document < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  validates :title, presence: true
  validates :date, presence: true
  enum :type, { medical_image: 0, reporting: 1, prescription: 2, referral_for_test: 3 }
  validates :doctor, presence: true
end