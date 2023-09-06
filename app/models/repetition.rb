class Repetition < ApplicationRecord
  belongs_to :reminder

  delegate :title, :patient, :id, to: :reminder
end
