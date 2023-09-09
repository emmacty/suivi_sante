class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

    def index
      # @patients = current_user.patients.reject {|patient| patient == current_user.patients.first }
      patient_with_min_id = current_user.patients.min_by { |patient| patient.id }
      @patients = current_user.patients.reject { |patient| patient == patient_with_min_id }
    end

    def show
      @patient = Patient.find(params[:id])
    end

   def new
    @patient = Patient.new
   end

    def create
      @patient = current_user.patients.create(patient_params)
      @patient.user_id = current_user.id
      if @patient.save
        UserPatient.create(user: current_user, patient: @patient) if @patient.user_id.nil?
        redirect_to patient_path(@patient)
        flash[:notice] = "Créé avec succès !"
      else
        render "new", status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @patient.update(patient_params)
        redirect_to patient_path(@patient)
        flash[:notice] = "Modifié avec succès !"
      else
        render "edit", status: :unprocessable_entity
      end
    end

    def destroy
      @patient.destroy
      redirect_to patients_path, status: :see_other
    end

    def my_profile
      patient_with_min_id = current_user.patients.min_by { |patient| patient.id }
      @patient = patient_with_min_id
    end

    private

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :age, :color, :security_card_number, :height, :weight, :bloodtype, :gender, :address, :allergies, :chronic_illness, :user_id, :photo, :documents)
    end

    def set_patient
      @patient = Patient.find(params[:id])
    end
end
