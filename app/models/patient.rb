class Patient < ApplicationRecord
  has_many :user_patients
  has_many :users, through: :user_patients
  has_one_attached :photo, presennce: true
  has_many :documents
  has_many :reminders
  has_many :bloodtests
  belongs_to :user, optional: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :security_card_number, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :bloodtype, presence: true, inclusion: { in: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"] }
  validates :gender, presence: true, inclusion: { in: ["Homme", "Femme", "Non précisé"] }
  validates :address, presence: true
  validates :chronic_illness, presence: true, inclusion: { in: ["None", "Hypertension", "Bronchopneumopathie chronique obstructive", "Insuffisance cardiaque chronique", "Diabète de type II", "Diabète de type I", "Maladie oncologique", "L'asthme bronchique", "Anémie", "Dépression"] }
end
