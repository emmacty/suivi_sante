class Patient < ApplicationRecord
  belongs_to :user
  has_many :documents
  has_many :reminders
  has_many :bloodtests
  has_many :users, through: :user_patient
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
