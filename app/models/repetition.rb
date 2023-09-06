class Repetition < ApplicationRecord
  belongs_to :reminder

  delegate :title, :patient, to: :reminder
end
