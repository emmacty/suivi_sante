require "open-uri"

puts "Cleaning database..."
Bloodtest.destroy_all
UserPatient.destroy_all
Document.destroy_all
Patient.destroy_all
User.destroy_all
puts "Creating users..."

# users seed

user_1 = User.create!(email: 'maïwenn.bennett@mail.com', password: 'password123')
user_2 = User.create!(email: 'andy.knight@mail.com', password: 'password232')
user_3 = User.create!(email: 'victoria.cruz@mail.com', password: 'password345')
user_4 = User.create!(email: 'emma.mitchell@mail.com', password: 'password')
user_5 = User.create!(email: 'laura.patel@mail.com', password: 'password589')
user_6 = User.create!(email: 'joris.sullivan@mail.com', password: 'password676')

# patient seed

patient_1 = Patient.create!(first_name: 'Lena' ,
  last_name: 'Bennett',
  age: 15,
  security_card_number: 12345678910111213,
  height: 170,
  weight: 65,
  bloodtype: 'A+',
  gender: 'female',
  address: '2 rue Dupaty,33300 Bordeaux, France',
  allergies: 'Pollen',
  chronic_illness: 'None',
  user: user_1
 )
patient_2 = Patient.create!(first_name: 'Maxwell' ,
  last_name: ' Knight',
  age: 11 ,
  security_card_number: 45612378910111213,
  height: 140,
  weight: 40,
  bloodtype: 'O+',
  gender: 'male',
  address: '3 Rue De Macau, 33000 Bordeaux, France',
  allergies: 'Peanuts',
  chronic_illness: 'None',
  user: user_1
)
patient_3 = Patient.create!(first_name: 'Isabella' ,
  last_name: 'Cruz',
  age: 65,
  security_card_number: 78945612310111213,
  height: 160,
  weight: 55,
  bloodtype: 'AB+',
  gender: 'female',
  address: '4 rue des Girondins, 33200 Bordeaux, France',
  allergies: 'Shellfish',
  chronic_illness: 'None',
  user: user_1
)
patient_4 = Patient.create!(first_name: 'Ethan' ,
  last_name: ' Mitchell',
  age: 8,
  security_card_number: 10145678912311213,
  height: 135,
  weight: 30,
  bloodtype: 'B+',
  gender: 'male',
  address: '5 rue André, 33200 Bordeaux, France',
  allergies: 'cat hair',
  chronic_illness: 'None',
  user: user_1
)
patient_5 = Patient.create!(first_name: 'Aria',
  last_name: ' Patel',
  age: 59,
  security_card_number: 11245678910112313,
  height: 158,
  weight: 53,
  bloodtype: 'A+',
  gender: 'female',
  address: '8 rue Louis Mie, 33000 Bordeaux, France',
  allergies: 'Fish',
  chronic_illness: "None",
  user: user_1
)
patient_6 = Patient.create!(first_name: 'Liam',
  last_name: ' Sullivan',
  age: 56,
  security_card_number: 13045678910111212,
  height: 161,
  weight: 54,
  bloodtype: 'A-',
  gender: 'male',
  address: '8 rue Corot, 33100 Bordeaux, France',
  allergies: 'Cow’s milk',
  chronic_illness: 'None',
  user: user_1
 )

# document seed

document_1 = Document.create!(title: 'medical_image', category: 0, doctor: 'Dr. Emily Johnson', patient: patient_1, user: user_1, date: Time.now)
document_2 = Document.create!(title: 'prescription', category: 2, doctor: 'Dr. Alexander Mitchell', patient: patient_1, user: user_1, date: Time.now )
document_3 = Document.create!(title: 'referral_for_test', category: 3, doctor: 'Dr. Olivia Anderson', patient: patient_1, user: user_1, date: Time.now)
document_4 = Document.create!(title: 'reporting', category: 1, doctor: 'Dr. Benjamin Parker', patient: patient_1, user: user_1, date: Time.now)
document_5 = Document.create!(title: 'reporting', category: 1, doctor: 'Dr. Sophia Williams', patient: patient_1, user: user_1, date: Time.now)
document_6 = Document.create!(title: 'medical_image', category: 0, doctor: 'Dr. Jacob Ramirez', patient: patient_1, user: user_1, date: Time.now)

# user_patients seed

user_patient_1 = UserPatient.create!(patient: patient_1, user: user_1)
user_patient_2 = UserPatient.create!(patient: patient_2, user: user_2)
user_patient_3 = UserPatient.create!(patient: patient_3, user: user_3)
user_patient_4 = UserPatient.create!(patient: patient_4, user: user_4)
user_patient_5 = UserPatient.create!(patient: patient_5, user: user_5)
user_patient_6 = UserPatient.create!(patient: patient_6, user: user_6)

# bloodtests seed

bloodtest_1 = Bloodtest.create!(
  title: 'patient 1 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Emily Johnson',
  patient: patient_1,
  date: Time.now,
  hepatic: 4.6,
  renal: 4,
  lipid: 50,
  sedimentation_rate: 17,
  glucose: 0.89,
  protein: 67,
  iron: 40,
  blood_count: 4.5
)

bloodtest_2 = Bloodtest.create!(
  title: 'patient 2 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Alexander Mitchell',
  patient: patient_2,
  date: Time.now,
  hepatic: 4.6,
  renal: 4,
  lipid: 56,
  sedimentation_rate: 14,
  glucose: 0.86,
  protein: 76,
  iron: 38,
  blood_count: 4.2
)

bloodtest_3 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_6,
  date: Time.now,
  hepatic: 4.1,
  renal: 3.4,
  lipid: 51,
  sedimentation_rate: 15,
  glucose: 0.86,
  protein: 61,
  iron: 43,
  blood_count: 4.8
)
