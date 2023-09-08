class PagesController < ApplicationController
  def home
    session[:connexion_homepage] = session[:connexion_homepage].to_i + 1
    @first_patient = current_user.patients.first
    @first_reminder = @first_patient.reminders.first
    @first_reminder_date = @first_reminder.start_time.to_s
    @date_a_verifier = DateTime.parse(@first_reminder_date)
    @date_actuelle = DateTime.now
  end

  def card
  end
end
