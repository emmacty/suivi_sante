class Bloodtest < ApplicationRecord
  BLOOD_CATEGORIES = {
    blood_count: "Hémoglobine",
    iron: "Fer",
    protein: "Protéine",
    glucose: "Glucose",
    sedimentation_rate: "Taux de sédimentation",
    lipid: "Lipides",
    renal: "Bilan rénal",
    hepatic: "Bilan hépatique",
  }



  belongs_to :patient
  validates :title, presence: true
  validates :laboratory, presence: true
  validates :doctor, presence: true
  validates :date, presence: true
  validates :blood_count, presence: true
  validates :iron, presence: true
  validates :protein, presence: true
  validates :glucose, presence: true
  validates :sedimentation_rate, presence: true
  validates :lipid, presence: true
  validates :renal, presence: true
  validates :hepatic, presence: true

  def self.chart_points
    bs = self.all
    BLOOD_CATEGORIES.map do |field, cat|
      { name: cat, data: bs.map { |b| [b.date, b[field]] }.to_h }
    end
  end

  def column_chart
    BLOOD_CATEGORIES.map do |field, cat|
      { data: { cat: field }.to_h }
    end
  end
end
