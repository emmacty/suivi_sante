class Reminder < ApplicationRecord
  belongs_to :patient
  has_many :repetitions, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  validates :start_time, presence: true
  validates :frequency_unity, presence: true
  validates :category, presence: true, inclusion: { in: ["Rendez-vous", "Traitement", "Contrôle"] }
  enum frequency_unity: { never: 0, daily: 1, weekly: 2, monthly: 3, yearly: 4 }
end
