class BloodtestsController < ApplicationController

  def my_bloodtests
    @patients = current_user.patients
  end

  def index
    @patient = Patient.find(params[:patient_id])
    @bloodtests = @patient.bloodtests.order(created_at: :desc)
  end

  def show
    @patient = Patient.find(params[:patient_id])
    @bloodtest = Bloodtest.find(params[:id])
    @bloodtest_data = {
      "Hémoglobine": @bloodtest[:blood_count],
      "Fer": @bloodtest[:iron],
      "Protéine": @bloodtest[:protein],
      "Glucose": @bloodtest[:glucose],
      "Taux de sédimentation": @bloodtest[:sedimentation_rate],
      "Lipides": @bloodtest[:lipid],
      "Bilan rénal": @bloodtest[:renal],
      "Bilan hépatique": @bloodtest[:hepatic]
    }
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @bloodtest = Bloodtest.new
  end

  def create
    @bloodtest = Bloodtest.new(bloodtest_params)
    @bloodtest.patient = Patient.find(params[:patient_id])
    if @bloodtest.save
      redirect_to patient_bloodtest_path(@bloodtest.patient, @bloodtest)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @patient = Patient.find(params[:patient_id])
    @bloodtest = Bloodtest.find(params[:id])
    @bloodtest.patient = Patient.find(params[:patient_id])
  end

  def update
    @bloodtest = Bloodtest.find(params[:id])
    @bloodtest.patient = Patient.find(params[:patient_id])
    if @bloodtest.update(bloodtest_params)
      redirect_to patient_bloodtest_path(@bloodtest.patient, @bloodtest)
      flash[:alert] = "Modifié avec succès !"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  private

  def bloodtest_params
    params.require(:bloodtest).permit(:title, :date, :doctor, :laboratory, :patient_id, :blood_count, :iron, :protein, :glucose, :sedimentation_rate, :lipid, :renal, :hepatic )
  end

end
