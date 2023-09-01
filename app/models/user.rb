class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_patients
  has_many :documents
  has_many :patients, through: :user_patients
  has_one :patient

  # after_create :set_patient_flag

  # def set_patient_flag
  #   update(patient: false)
  # end
end
