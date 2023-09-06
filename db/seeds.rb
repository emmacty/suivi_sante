require "open-uri"

puts "Cleaning database..."
Reminder.destroy_all
Article.destroy_all
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
user_7 = User.create!(email: 'adele.martin@mail.com', password: 'password')

puts "User created!"

puts "Creating patients..."

# patient seed

patient_1 = Patient.new(first_name: 'Maïwenn',
  last_name: 'Bennett',
  age: 15,
  security_card_number: 12345678910111213,
  height: 170,
  weight: 65,
  bloodtype: 'A+',
  gender: 'Femme',
  address: '2 rue Dupaty,33300 Bordeaux, France',
  allergies: 'Pollen',
  chronic_illness: 'Aucune',
  user: user_1
)

patient_2 = Patient.new(first_name: 'Maxwell' ,
  last_name: ' Knight',
  age: 11 ,
  security_card_number: 45612378910111213,
  height: 140,
  weight: 40,
  bloodtype: 'O+',
  gender: 'Homme',
  address: '3 Rue De Macau, 33000 Bordeaux, France',
  allergies: 'Peanuts',
  chronic_illness: 'Aucune',
)
patient_3 = Patient.new(first_name: 'Isabella' ,
  last_name: 'Cruz',
  age: 65,
  security_card_number: 78945612310111213,
  height: 160,
  weight: 55,
  bloodtype: 'AB+',
  gender: 'Femme',
  address: '4 rue des Girondins, 33200 Bordeaux, France',
  allergies: 'Shellfish',
  chronic_illness: 'Aucune',
)

patient_4 = Patient.new(first_name: 'Ethan' ,
  last_name: ' Mitchell',
  age: 8,
  security_card_number: 10145678912311213,
  height: 135,
  weight: 30,
  bloodtype: 'B+',
  gender: 'Homme',
  address: '5 rue André, 33200 Bordeaux, France',
  allergies: 'cat hair',
  chronic_illness: 'Aucune',
)

patient_5 = Patient.new(first_name: 'Aria',
  last_name: ' Patel',
  age: 59,
  security_card_number: 11245678910112313,
  height: 158,
  weight: 53,
  bloodtype: 'A+',
  gender: 'Femme',
  address: '8 rue Louis Mie, 33000 Bordeaux, France',
  allergies: 'Fish',
  chronic_illness: "Aucune",
)

patient_6 = Patient.new(first_name: 'Liam',
  last_name: ' Sullivan',
  age: 56,
  security_card_number: 13045678910111212,
  height: 161,
  weight: 54,
  bloodtype: 'A-',
  gender: 'Homme',
  address: '8 rue Corot, 33100 Bordeaux, France',
  allergies: 'Cow’s milk',
  chronic_illness: 'Aucune',
 )

 patient_7 = Patient.new(first_name: 'Adèle',
  last_name: 'Martin',
  age: 31,
  security_card_number: 12345678910111214,
  height: 170,
  weight: 55,
  bloodtype: 'A+',
  gender: 'Femme',
  address: '2 rue Dupaty, 33300 Bordeaux, France',
  allergies: 'Pollen',
  chronic_illness: 'Aucune',
  user: user_7
)

patient_8 = Patient.new(first_name: 'Jean-Pierre',
  last_name: 'Martin',
  age: 85,
  security_card_number: 12345678910111145,
  height: 185,
  weight: 80,
  bloodtype: 'A+',
  gender: 'Homme',
  address: '110 rue Godard, 33200 Bordeaux, France',
  allergies: 'Pollen',
  chronic_illness: 'Aucune',
)

patient_9 = Patient.new(first_name: 'Léo',
  last_name: 'Martin',
  age: 4,
  security_card_number: 12345678910111742,
  height: 105,
  weight: 18,
  bloodtype: 'A+',
  gender: 'Homme',
  address: '2 rue Dupaty, 33300 Bordeaux, France',
  allergies: 'None',
  chronic_illness: 'Aucune',
)

# patients photos

require "open-uri"

file = URI.open("https://avatars.githubusercontent.com/u/102687903?v=4")
patient_1.photo.attach(io: file, filename: "lena.png", content_type: "image/png")
patient_1.save

file_2 = URI.open("https://avatars.githubusercontent.com/u/139124191?v=4")
patient_2.photo.attach(io: file_2, filename: "maxwell.png", content_type: "image/png")
patient_2.save

file_3 = URI.open("https://avatars.githubusercontent.com/u/139124726?v=4")
patient_3.photo.attach(io: file_3, filename: ".png", content_type: "image/png")
patient_3.save

file_4 = URI.open("https://avatars.githubusercontent.com/u/138495721?v=4")
patient_4.photo.attach(io: file_4, filename: "ethan.png", content_type: "image/png")
patient_4.save

file_5 = URI.open("https://avatars.githubusercontent.com/u/101594582?v=4")
patient_5.photo.attach(io: file_5, filename: "aria.png", content_type: "image/png")
patient_5.save

file_6 = URI.open("https://avatars.githubusercontent.com/u/139125894?v=4")
patient_6.photo.attach(io: file_6, filename: "liam.png", content_type: "image/png")
patient_6.save

file_7 = URI.open("https://avatars.githubusercontent.com/u/102687903?v=4")
patient_7.photo.attach(io: file_7, filename: "adele.png", content_type: "image/png")
patient_7.save

file_8 = URI.open("https://plus.unsplash.com/premium_photo-1672297543351-17987c5c9361?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fG9sZCUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
patient_8.photo.attach(io: file_8, filename: "jeanpierre.png", content_type: "image/png")
patient_8.save

file_9 = URI.open("https://images.unsplash.com/photo-1602030028438-4cf153cbae9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fGJveXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
patient_9.photo.attach(io: file_9, filename: "leo.png", content_type: "image/png")
patient_9.save


puts "Patients created!"

puts "Creating documents..."


# document seed

document_1 = Document.new(title: 'Radio du dos', category: "Imagerie médicale", document_type: 1, doctor: 'Dr. Emily Johnson', patient: patient_1, user: user_1, date: Time.now)
document_2 = Document.new(title: 'Ordonnance angine', category: "Ordonnance", document_type: 3, doctor: 'Dr. Alexander Mitchell', patient: patient_1, user: user_1, date: Time.now )
document_3 = Document.new(title: 'Ordonnance analyses sanguines', category: "Ordonnance de biologie",  document_type: 4, doctor: 'Dr. Olivia Anderson', patient: patient_1, user: user_1, date: Time.now)
document_4 = Document.new(title: 'Compte rendu radio fémur', category: "Compte-rendu", document_type: 2, doctor: 'Dr. Benjamin Parker', patient: patient_1, user: user_1, date: Time.now)
document_5 = Document.new(title: 'Compte rendu IRM cervicales', category: "Compte-rendu", document_type: 2, doctor: 'Dr. Sophia Williams', patient: patient_1, user: user_1, date: Time.now)
document_6 = Document.new(title: 'Echographie', category: "Imagerie médicale", document_type: 1, doctor: 'Dr. Jacob Ramirez', patient: patient_1, user: user_1, date: Time.now)
document_11 = Document.new(title: 'Echographie', category: "Imagerie médicale", document_type: 1, doctor: 'Dr. Jacob Ramirez', patient: patient_7, user: user_7, date: "01-06-2019")
document_7 = Document.new(title: 'Radio du dos', category: "Imagerie médicale", document_type: 1, doctor: 'Dr. Henri Djerdi', patient: patient_7, user: user_7, date: "12-05-2022")
document_9 = Document.new(title: 'Compte rendu radio fémur', category: "Compte-rendu", document_type: 2, doctor: 'Dr. Benjamin Dupont', patient: patient_8, user: user_7, date: "25-05-2023")
document_8 = Document.new(title: 'Ordonnance angine', category: "Ordonnance", document_type: 3, doctor: 'Dr. Alexandre Michel', patient: patient_9, user: user_7, date: "15-07-2023")
document_10 = Document.new(title: 'Ordonnance analyses sanguines', category: "Ordonnance de biologie",  document_type: 4, doctor: 'Dr. Olivia Anderson', patient: patient_7, user: user_7, date: "28-07-2023")



puts "Documents created!"

# show image seed

require "open-uri"

file = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/radio_du_dos_mbt9yt.png")
document_1.photo.attach(io: file, filename: "radio_du_dos.png", content_type: "image/png")
document_1.save

file_2 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/ordonnance_angine_vgvs9a.jpg")
document_2.photo.attach(io: file_2, filename: "radio_du_dos.png", content_type: "image/jpg")
document_2.save

file_3 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/ordonnance_analyse_sang_gb0nm6.jpg")
document_3.photo.attach(io: file_3, filename: "ordonnance_analyse_sang.jpg", content_type: "image/jpg")
document_3.save

# file_4 = URI.open("https://avatars.githubusercontent.com/u/138495721?v=4")
# patient_4.photo.attach(io: file_4, filename: "ethan.png", content_type: "image/png")
# patient_4.save

file_5 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/compte_rendu_irm_cervicale_s9tifn.png")
document_5.photo.attach(io: file_5, filename: "compte_rendu_irm_cervicale.png", content_type: "image/png")
document_5.save

file_6 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/echographie_ldhbsw.jpg")
document_6.photo.attach(io: file_6, filename: "echographie.jpg", content_type: "image/jpg")
document_6.save

file_7 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/radio_du_dos_mbt9yt.png")
document_7.photo.attach(io: file_7, filename: "radio_du_dos2.jpg", content_type: "image/jpg")
document_7.save

file_8 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/ordonnance_angine_vgvs9a.jpg")
document_8.photo.attach(io: file_8, filename: "ordo_angine.jpg", content_type: "image/jpg")
document_8.save

file_9 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/compte_rendu_irm_cervicale_s9tifn.png")
document_9.photo.attach(io: file_9, filename: "compte_rendu_femur.jpg", content_type: "image/jpg")
document_9.save

file_10 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/ordonnance_analyse_sang_gb0nm6.jpg")
document_10.photo.attach(io: file_10, filename: "ordo_analyses_sang.jpg", content_type: "image/jpg")
document_10.save

file_11 = URI.open("https://res.cloudinary.com/dz5wllxek/image/upload/v1693476872/echographie_ldhbsw.jpg")
document_11.photo.attach(io: file_11, filename: "echographie.jpg", content_type: "image/jpg")
document_11.save


puts "Creating user_patients..."

# user_patients seed

user_patient_1 = UserPatient.create(patient: patient_1, user: user_1)
user_patient_2 = UserPatient.create!(patient: patient_2, user: user_1)
user_patient_3 = UserPatient.create!(patient: patient_3, user: user_1)
user_patient_4 = UserPatient.create!(patient: patient_4, user: user_1)
user_patient_5 = UserPatient.create!(patient: patient_5, user: user_1)
user_patient_6 = UserPatient.create!(patient: patient_6, user: user_1)
user_patient_7 = UserPatient.create!(patient: patient_7, user: user_7)
user_patient_8 = UserPatient.create!(patient: patient_8, user: user_7)
user_patient_9 = UserPatient.create!(patient: patient_9, user: user_7)

puts "User_patients created!"

puts "Creating bloodtests..."

# bloodtests seed

bloodtest_1 = Bloodtest.create!(
  title: 'patient 1 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Emily Johnson',
  patient: patient_1,
  date: "01-06-2019",
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
  patient: patient_1,
  date: "12-09-2021",
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
  patient: patient_1,
  date: "23-10-2022",
  hepatic: 4.1,
  renal: 3.4,
  lipid: 51,
  sedimentation_rate: 15,
  glucose: 0.86,
  protein: 61,
  iron: 43,
  blood_count: 4.8
)

# For Adele and her patients

bloodtest_4 = Bloodtest.create!(
  title: 'Bilan trimestriel',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_7,
  date: "23-03-2022",
  hepatic: 4.1,
  renal: 3.4,
  lipid: 60,
  sedimentation_rate: 15,
  glucose: 0.86,
  protein: 55,
  iron: 43,
  blood_count: 4.8
)
bloodtest_5 = Bloodtest.create!(
  title: 'Bilan trimestriel',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_7,
  date: "23-06-2022",
  hepatic: 4.1,
  renal: 3.4,
  lipid: 45,
  sedimentation_rate: 23,
  glucose: 0.86,
  protein: 80,
  iron: 55,
  blood_count: 8
)
bloodtest_6 = Bloodtest.create!(
  title: 'Bilan trimestriel',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_7,
  date: "23-09-2022",
  hepatic: 4.1,
  renal: 3.4,
  lipid: 75,
  sedimentation_rate: 35,
  glucose: 0.86,
  protein: 61,
  iron: 38,
  blood_count: 6
)

# --------------------------------
# JP

bloodtest_7 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_8,
  date: "23-01-2022",
  hepatic: 4.1,
  renal: 3.4,
  lipid: 51,
  sedimentation_rate: 25,
  glucose: 0.86,
  protein: 70,
  iron: 43,
  blood_count: 15.2
)
bloodtest_8 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_8,
  date: "23-06-2022",
  hepatic: 6.1,
  renal: 2.1,
  lipid: 42,
  sedimentation_rate: 35,
  glucose: 0.86,
  protein: 80,
  iron: 55,
  blood_count: 10.1
)
bloodtest_9 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_8,
  date: "23-10-2022",
  hepatic: 3.1,
  renal: 4,
  lipid: 60,
  sedimentation_rate: 15,
  glucose: 0.86,
  protein: 68,
  iron: 48,
  blood_count: 23
)

# -------------------------------
# Léo

bloodtest_10 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_9,
  date: "23-03-2022",
  hepatic: 4.1,
  renal: 4,
  lipid: 51,
  sedimentation_rate: 22,
  glucose: 0.86,
  protein: 40,
  iron: 45,
  blood_count: 10
)
bloodtest_11 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_9,
  date: "23-06-2022",
  hepatic: 8.4,
  renal: 3.4,
  lipid: 47,
  sedimentation_rate: 25,
  glucose: 0.72,
  protein: 45,
  iron: 40,
  blood_count: 7.3
)
bloodtest_12 = Bloodtest.create!(
  title: 'patient 6 test',
  laboratory: 'BioLab Innovations',
  doctor: 'Dr. Jacob Ramirez',
  patient: patient_9,
  date: "23-10-2022",
  hepatic: 13,
  renal: 3,
  lipid: 40,
  sedimentation_rate: 35,
  glucose: 0.50,
  protein: 60,
  iron: 55,
  blood_count: 9.1
)

puts "Bloodtests created!"

puts "Creating articles..."

article_1 = Article.create!(
  title: "Les 10 Conseils Essentiels pour une Alimentation Saine",
  content: "Introduction

  Une alimentation équilibrée joue un rôle crucial dans notre bien-être global. Elle fournit les nutriments essentiels dont notre corps a besoin pour fonctionner correctement, tout en prévenant de nombreuses maladies chroniques. Cependant, il peut parfois être difficile de savoir par où commencer pour adopter de bonnes habitudes alimentaires. Dans cet article, nous allons explorer dix conseils essentiels pour vous aider à maintenir une alimentation saine.

  1. Variez votre alimentation

  L'une des clés pour une alimentation saine est la variété. Mangez une grande variété d'aliments pour vous assurer de bénéficier d'une large gamme de nutriments. Incluez des fruits, des légumes, des céréales complètes, des protéines maigres, des produits laitiers faibles en gras et des sources de graisses saines comme les noix et les avocats dans votre alimentation quotidienne.

  2. Portez attention aux portions

  Même les aliments sains peuvent entraîner une prise de poids si vous en mangez en excès. Apprenez à contrôler les portions en utilisant des assiettes plus petites, en lisant les étiquettes nutritionnelles et en écoutant votre corps pour savoir quand vous êtes rassasié.

  3. Limitez les aliments transformés

  Les aliments transformés sont souvent riches en sucres ajoutés, en graisses saturées et en sodium. Essayez de limiter votre consommation de ces produits en optant pour des aliments frais et non transformés autant que possible.

  4. Consommez des protéines de qualité

  Les protéines sont essentielles à la construction et à la réparation des tissus corporels. Optez pour des sources de protéines maigres telles que le poulet, le poisson, les légumineuses et les produits laitiers faibles en gras. Évitez les viandes transformées riches en gras saturés.

  5. Hydratez-vous

  L'eau est essentielle à de nombreuses fonctions corporelles. Buvez suffisamment d'eau tout au long de la journée pour rester hydraté. Évitez les boissons sucrées et les sodas, qui peuvent être riches en calories vides.

  6. Privilégiez les graisses saines

  Les graisses saines, telles que celles trouvées dans les avocats, les noix, les graines et l'huile d'olive, sont bénéfiques pour votre santé cardiovasculaire. Limitez les graisses saturées et les graisses trans, que l'on trouve souvent dans les aliments frits et transformés.

  7. Évitez le grignotage excessif

  Les collations peuvent être une partie importante d'une alimentation saine, mais évitez de grignoter de manière excessive entre les repas. Optez pour des collations nutritives comme des légumes crus avec de l'houmous ou des fruits frais.

  8. Planifiez vos repas

  La planification des repas peut vous aider à éviter de faire des choix alimentaires impulsifs. Préparez vos repas à l'avance et ayez des options saines disponibles pour les moments où vous avez faim.

  9. Lisez les étiquettes nutritionnelles

  Apprenez à décoder les étiquettes nutritionnelles pour connaître la composition des aliments que vous achetez. Recherchez des produits avec des ingrédients simples et évitez les produits avec de longues listes d'additifs.

  10. Soyez patient et indulgent envers vous-même

  Adopter une alimentation saine est un processus qui peut prendre du temps. Ne soyez pas trop dur envers vous-même et permettez-vous des plaisirs occasionnels. L'essentiel est de maintenir un équilibre sur le long terme.

  Conclusion

  En suivant ces dix conseils pour une alimentation saine, vous pouvez améliorer votre santé, augmenter votre énergie et prévenir de nombreuses maladies. Rappelez-vous que l'alimentation est un aspect essentiel de votre bien-être global, alors prenez soin de votre corps en faisant des choix alimentaires judicieux.",

  author: "Sophie Martin, diététicienne"
)

article_2 = Article.create!(
  title: "Les Clés d'une Bonne Pratique Sportive : L'Équilibre entre Entraînement et Bien-Être",
  content: "Introduction

  La pratique sportive régulière est un pilier essentiel de la santé physique et mentale. Cependant, pour en tirer tous les bénéfices, il est important de développer une bonne pratique sportive. Dans cet article, nous explorerons les principaux éléments d'une bonne pratique sportive, mettant l'accent sur l'équilibre entre l'entraînement rigoureux et le bien-être.

  1. Écoutez votre corps

  L'une des règles d'or de toute bonne pratique sportive est d'écouter son propre corps. Votre corps vous envoie des signaux, que ce soit la fatigue, la douleur ou la soif. Apprenez à reconnaître ces signaux et à y réagir de manière appropriée. Ignorer la douleur persistante peut entraîner des blessures graves, tandis que l'hydratation et le repos sont essentiels pour des performances optimales.

  2. Variez vos activités

  La monotonie peut tuer la motivation. Variez vos activités sportives pour éviter l'ennui et favoriser le développement de divers groupes musculaires. La diversité des exercices contribue également à prévenir les blessures liées à la surutilisation.

  3. Établissez des objectifs réalistes

  Définir des objectifs est une partie importante de la pratique sportive, mais ils doivent être réalistes et atteignables. Fixer des attentes irréalistes peut entraîner la démotivation. Établissez des objectifs à court et à long terme, puis suivez vos progrès pour rester motivé.

  4. Pratiquez la récupération active

  La récupération est aussi importante que l'entraînement lui-même. Intégrez des séances de récupération active, telles que le stretching, le yoga ou la méditation, dans votre routine. Ces activités peuvent aider à soulager la tension musculaire et à améliorer la flexibilité.

  5. Respectez un programme d'entraînement progressif

  Évitez de vous précipiter vers des niveaux d'entraînement élevés trop rapidement. Un programme d'entraînement progressif permet à votre corps de s'adapter et de se renforcer graduellement, réduisant ainsi le risque de blessures.

  6. N'oubliez pas la nutrition

  Une alimentation équilibrée est cruciale pour une pratique sportive optimale. Assurez-vous de consommer suffisamment de nutriments essentiels, tels que les protéines, les glucides, les graisses saines et les vitamines. Hydratez-vous également adéquatement pour maintenir vos performances.

  7. Restez flexible dans votre emploi du temps

  La vie est souvent imprévisible, et il est important d'adapter votre pratique sportive à vos engagements et responsabilités. Si vous ne pouvez pas suivre votre programme d'entraînement habituel un jour, ne vous en faites pas. Il est plus important de maintenir la régularité à long terme que de s'inquiéter d'une séance manquée.

  8. Écoutez les conseils d'experts

  Si vous débutez dans une nouvelle discipline sportive ou si vous avez des objectifs spécifiques, n'hésitez pas à consulter un coach sportif ou un expert. Leurs conseils peuvent vous aider à atteindre vos objectifs de manière plus efficace et sûre.

  Conclusion

  Une bonne pratique sportive repose sur l'équilibre entre l'entraînement rigoureux et le bien-être. En écoutant votre corps, en fixant des objectifs réalistes et en incluant la récupération dans votre routine, vous pouvez non seulement améliorer vos performances, mais aussi maintenir une pratique sportive saine et durable. N'oubliez pas que le sport devrait être avant tout une source de plaisir et de bien-être.",

  author: "Lucie Dupont, coach sportive"
)

article_3 = Article.create!(
  title: "Les Secrets d'un Bon Sommeil : Comment Obtenir des Nuits de Rêve",
  content: "Introduction

  Le sommeil est l'un des piliers de la santé et du bien-être. Une bonne nuit de sommeil régénère le corps et l'esprit, renforce le système immunitaire, améliore la mémoire, et favorise une humeur positive. Malheureusement, de nombreuses personnes souffrent de problèmes de sommeil, ce qui peut avoir un impact négatif sur leur qualité de vie. Dans cet article, nous allons explorer les secrets d'un bon sommeil et vous donner des conseils pratiques pour obtenir des nuits de rêve.

  1. Respectez une routine de sommeil

  L'un des moyens les plus efficaces d'améliorer la qualité de votre sommeil est de suivre une routine de sommeil régulière. Essayez de vous coucher et de vous lever à la même heure tous les jours, même les week-ends. Cette régularité aide à réguler votre horloge biologique interne.

  2. Créez un environnement propice au sommeil

  Votre environnement de sommeil joue un rôle essentiel dans la qualité de votre repos. Assurez-vous que votre chambre est sombre, silencieuse, fraîche et confortable. Investissez dans un matelas et des oreillers de qualité pour un soutien optimal.

  3. Limitez les écrans avant le coucher

  Les écrans de télévision, d'ordinateur, de tablette et de téléphone émettent une lumière bleue qui peut perturber la production de mélatonine, une hormone essentielle au sommeil. Évitez l'utilisation d'écrans au moins une heure avant de vous coucher.

  4. Évitez la caféine et l'alcool en soirée

  La caféine et l'alcool peuvent perturber le sommeil. Limitez la consommation de ces substances, en particulier dans les heures précédant le coucher. Optez plutôt pour une tisane apaisante ou de l'eau.

  5. Faites de l'exercice régulièrement

  L'exercice physique régulier peut améliorer la qualité du sommeil, mais évitez de faire de l'exercice intense trop près de l'heure du coucher, car cela peut vous rendre plus alerte. Idéalement, faites de l'exercice plusieurs heures avant de vous coucher.

  6. Gérez le stress et l'anxiété

  Le stress et l'anxiété peuvent grandement affecter la qualité du sommeil. Pratiquez des techniques de relaxation telles que la méditation, la respiration profonde ou le yoga pour calmer votre esprit avant le coucher.

  7. Évitez les repas lourds en soirée

  Les repas copieux en soirée peuvent provoquer des problèmes de digestion et vous tenir éveillé. Essayez de dîner plus tôt dans la soirée et optez pour des repas légers avant le coucher.

  8. Évitez les siestes excessives

  Les siestes excessives en journée peuvent perturber votre rythme de sommeil nocturne. Si vous avez besoin de faire une sieste, limitez-la à 20 à 30 minutes et évitez de la faire trop tard dans la journée.

  9. Consultez un professionnel de la santé si nécessaire

  Si malgré tous vos efforts, vos problèmes de sommeil persistent, il peut être utile de consulter un professionnel de la santé. Des troubles du sommeil tels que l'apnée du sommeil ou l'insomnie nécessitent parfois une intervention médicale.

  Conclusion

  Obtenir un bon sommeil est essentiel pour une vie saine et équilibrée. En suivant ces conseils et en créant une routine de sommeil adaptée à vos besoins, vous pouvez améliorer considérablement la qualité de vos nuits et profiter des nombreux bienfaits d'un sommeil réparateur. N'oubliez pas que le sommeil est une composante précieuse de votre bien-être global, alors prenez-en soin.",

  author: "Alexandre Dubois, spécialiste du sommeil"
)

puts "articles created !"
