class Repetition < ApplicationRecord
  belongs_to :reminder

  delegate :title, :patient, :id, :content, :category, :frequency_unity, to: :reminder
end
