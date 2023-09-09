class PagesController < ApplicationController
  def home
    @first_patient = current_user.patients.first
    @first_reminder = @first_patient.reminders.first
    @date_actuelle = DateTime.now
  end

  def card
  end
end
