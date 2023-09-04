class BloodtestsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @bloodtest = Bloodtest.new
  end

  def create
    @bloodtest = Bloodtest.new(bloodtest_params)
    @bloodtest.patient_id = patient.id
    if @bloodtest.save
      redirect_to bloodtest_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
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
