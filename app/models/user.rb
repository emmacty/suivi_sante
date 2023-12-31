class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_patients
  has_many :documents
  has_many :patients, through: :user_patients
  has_one :patient
  has_many :reminders, through: :patients
  has_many :repetitions, through: :reminders
end
