class BloodtestsController < ApplicationController

  def index
    @bloodtests = current_user.patient.bloodtests
  end

  def show
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
    @bloodtest = Bloodtest.new
  end

  def create
    @bloodtest = Bloodtest.new(bloodtest_params)
    @bloodtest.patient = current_user.patient
    if @bloodtest.save
      redirect_to bloodtest_path(@bloodtest)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @bloodtest = Bloodtest.find(params[:id])
  end

  def update
    @bloodtest = Bloodtest.find(params[:id])
    if @bloodtest.update(bloodtest_params)
      redirect_to bloodtest_path(@bloodtest)
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
