class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @reminders = current_user.reminders.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @repetitions = current_user.repetitions.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    if params.dig(:filter, :patients)
      @reminders = @reminders.filter_by_patient(params[:filter][:patients])
      @repetitions = @repetitions.includes(:reminder).where(reminder: {patient_id: params[:filter][:patients]})
    end
  end

  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new(reminder_params)
    @reminder.patient_id = params[:reminder][:patient_id]
    if @reminder.save
      create_repetitions_for_reminder(@reminder)
      redirect_to reminders_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @reminder.repetitions.destroy_all
    if @reminder.update(reminder_params)
      create_repetitions_for_reminder(@reminder)
      redirect_to reminders_path
      flash[:alert] = "Modifié avec succès!"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @reminder.destroy
    redirect_to reminders_path, status: :see_other
  end

  private

  def reminder_params
    params.require(:reminder).permit(:title, :content, :symbol, :date, :frequency_number, :duration, :patient_id, :frequency_unity, :category, :start_time)
  end

  def set_reminder
    @reminder = Reminder.find(params[:id])
  end

  def create_repetitions_for_reminder(reminder)
    case reminder.frequency_unity.to_sym
    when :daily
      create_daily_repetitions(reminder)
    when :weekly
      create_weekly_repetitions(reminder)
    when :monthly
      create_monthly_repetitions(reminder)
    when :yearly
      create_yearly_repetitions(reminder)
    end
  end

  def create_daily_repetitions(reminder)
    start_time = reminder.start_time
    (1..365).each do |day_offset|
      repetition_time = start_time + day_offset.days
      @repetition = Repetition.create(start_time: repetition_time, reminder: reminder)
    end
  end

  def create_weekly_repetitions(reminder)
    start_time = reminder.start_time
    (1..52).each do |week_offset|
      repetition_time = start_time + week_offset.weeks
      @repetition = Repetition.create(start_time: repetition_time, reminder: reminder)
    end
  end

  def create_monthly_repetitions(reminder)
    start_time = reminder.start_time
    (1..12).each do |month_offset|
      repetition_time = start_time + month_offset.months
      @repetition = Repetition.create(start_time: repetition_time, reminder: reminder)
    end
  end

  def create_yearly_repetitions(reminder)
    start_time = reminder.start_time
    (1..5).each do |year_offset|
      repetition_time = start_time + year_offset.years
      @repetition = Repetition.create(start_time: repetition_time, reminder: reminder)
    end
  end
end
