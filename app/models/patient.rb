class Patient < ApplicationRecord
  has_many :user_patients, dependent: :destroy
  has_many :users, through: :user_patients
  has_one_attached :photo
  has_many :documents
  has_many :reminders
  has_many :repetitions, through: :reminders
  has_many :bloodtests
  belongs_to :user, optional: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :photo, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :security_card_number, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :bloodtype, presence: true, inclusion: { in: ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"] }
  validates :gender, presence: true, inclusion: { in: ["Homme", "Femme", "Non précisé"] }
  validates :address, presence: true
  validates :chronic_illness, presence: true, inclusion: { in: ["Aucune", "Hypertension", "Bronchopneumopathie chronique obstructive", "Insuffisance cardiaque chronique", "Diabète de type II", "Diabète de type I", "Maladie oncologique", "L'asthme bronchique", "Anémie", "Dépression"] }
end
