class Reminder < ApplicationRecord
  belongs_to :patient
  validates :title, presence: true
  validates :content, presence: true
  validates :symbol, presence: true
  validates :date, presence: true
  validates :frequency_number, presence: true
  validates :duration, presence: true
  validates :frequency_uniy, presence: true
  validates :category, presence: true
end
