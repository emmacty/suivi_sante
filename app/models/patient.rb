class Patient < ApplicationRecord
  has_many :user_patients
  has_many :users, through: :user_patients
  has_many :documents
  has_many :reminders
  has_many :bloodtests
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :security_card_number, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :bloodtype, presence: true
  validates :gender, presence: true
  validates :address, presence: true
  validates :chronic_illness, presence: true
end
