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
  end

  def create
  end

  def edit
  end

  def update
  end

end
