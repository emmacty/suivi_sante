class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
    def index
      @patients = current_user.patients

    end

    def show
    end

   def new
    @patient = current_user.patients.new
   end

    def create
      @patient = current_user.patients.create(patient_params)
      if @patient.save
        redirect_to patient_path(@patient)
      else
        render "new", status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @patient.update(patient_params)
        redirect_to patient_path(@patient)
        flash[:alert] = "Modifié avec succès!"
      else
        render "edit", status: :unprocessable_entity
      end
    end

    def destroy
      @patient.destroy
      redirect_to patients_path, status: :no_content
    end

    private

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :age, :color, :security_card_number, :height, :weight, :bloodtype, :gender, :address, :allergies, :chronic_illness, :photo)
    end

    def set_patient
      @patient = Patient.find(params[:id])
    end
end
