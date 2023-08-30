class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_patients
  has_many :documents
  has_many :patients, through: :user_patients
  has_one :patient

  def all_patients
    patients_list = self.patients
    patients_list + [self.patient]
    # user_patients = UserPatient.where(user_id: self.id)
    # Patient.where(user_id: self.id) + user_patients.map(&:patient)
  end
end
