class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  def index
      @reminders = current_user.patients.joins(:reminders).distinct
  end


  def show
  end

  def new
  @reminder = Reminder.new
  end

  def create
    def create
      @reminder = Reminder.new(reminder_params)
      # Set the patient_id based on the selected patient
      @reminder.patient_id = params[:reminder][:patient_id]

      if @reminder.save
        redirect_to reminder_path(@reminder)
      else
        render "new", status: :unprocessable_entity
      end
    end

  end

  def edit
  end

  def update
    if @reminder.update(reminder_params)
      redirect_to reminder_path(@reminder)
      flash[:alert] = "Modifié avec succès!"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @reminder.destroy
    redirect_to reminders_path, status: :no_content
  end

  private

    def reminder_params
      params.require(:reminder).permit(:title, :content, :symbol, :date, :frequency_number, :duration, :patient_id, :frequency_unity, :category)
    end

    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

end
