class Repetition < ApplicationRecord
  belongs_to :reminder

  delegate :title, to: :reminder
end
