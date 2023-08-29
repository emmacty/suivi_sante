class Bloodtest < ApplicationRecord
  belongs_to :patient
  validates :title, presence: true
  validates :laboratory, presence: true
  validates :doctor, presence: true
  validates :date, presence: true
  validates :blood_count, presence: true
  validates :iron, presence: true
  validates :protein, presence: true
  validates :glucose, presence: true
  validates :sedimentation_rate, presence: true
  validates :lipid, presence: true
  validates :renal, presence: true
  validates :hepatic, presence: true
end
