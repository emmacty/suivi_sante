class Repetition < ApplicationRecord
  belongs_to :reminder

  delegate :title, :patient, :content, :category, :frequency_unity, to: :reminder
end
