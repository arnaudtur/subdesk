# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Notification.destroy_all
Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts 'Creating User...'

User.create!({ name: 'Meero',  field: 'Marketing',  description: 'Where freedom, community and creativity come together',  weblink: 'https://www.meero.com',  year_of_creation: 2014,  number_of_employees: 25,  hq_address: '17 Avenue Paul Doumer',  average_age: 25,  email: 'Meero@Meero.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 4,  criteria5: 3,  criteria6: 2,  criteria7: 3,  criteria8: 2,  criteria9: 1,  criteria10: 2,  criteria4: 4})
file = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/65094392_2826146177458673_6324879272288714752_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=HSOYa2o39MIAX8UUmBM&_nc_ht=scontent-cdg2-1.xx&oh=6f08760e69411c3bf8bcc5e0846807d8&oe=5F6D81D2')
User.last.photo.attach(io: file, filename: 'meero.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Meero',  price: '500',  address: '17 Avenue Paul Doumer,Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Meero Decouvrez nous sur notre profil !',  total_seats: '675',  seats: '48',  room: '3',  size: '576',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/4519dfb3-35f9-4847-b71a-4f9bd3d42997/-/crop/2397x1596/0,2/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Doctolib',  field: 'Marketing',  description: 'Prise de rendez-vous en ligne – Applications sur ...',  weblink: 'http://www.doctolib.fr',  year_of_creation: 2013,  number_of_employees: 325,  hq_address: '42 Rue Damrémont',  average_age: 27,  email: 'Doctolib@Doctolib.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 1,  criteria5: 4,  criteria6: 4,  criteria7: 1,  criteria8: 1,  criteria9: 3,  criteria10: 3,  criteria4: 4})
file = URI.open('https://www.doctolib.fr/icon_patient/180x180.png')
User.last.photo.attach(io: file, filename: 'doctolib.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Doctolib',  price: '440',  address: '42 Rue Damrémont,Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Doctolib Decouvrez nous sur notre profil !',  total_seats: '369',  seats: '51',  room: '4',  size: '612',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/3ec7c0fd-f87b-402d-bed8-47d179823ca2/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


User.create!({ name: 'ManoMano',  field: 'Ecommerce',  description: 'Achat en ligne bricolage, rénovation et jardinage',  weblink: 'http://www.manomano.fr/',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '56 Avenue de Suffren',  average_age: 26,  email: 'ManoMano@ManoMano.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 1,  criteria5: 4,  criteria6: 2,  criteria7: 4,  criteria8: 1,  criteria9: 2,  criteria10: 2,  criteria4: 1})
file = URI.open('https://moralscore.org/media/icons/large/ManoMano.svg')
User.last.photo.attach(io: file, filename: 'mano.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'ManoMano',  price: '650',  address: '56 Avenue de Suffren, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez ManoMano Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '83',  room: '6',  size: '996',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/37643e03-3c0d-4998-af25-bbee1d87f960/-/crop/2398x1600/0,0/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')



User.create!({ name: 'Qonto',  field: 'Fintech',  description: 'Qonto Compte Pro en Ligne - Entreprises & Indépendants‎',  weblink: 'http://qonto.eu',  year_of_creation: 2016,  number_of_employees: 325,  hq_address: '75 Rue des Pyrénées',  average_age: 29,  email: 'Qonto@Qonto.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 2,  criteria5: 2,  criteria6: 2,  criteria7: 3,  criteria8: 1,  criteria9: 1,  criteria10: 4,  criteria4: 3})
file = URI.open('https://entreprises.selectra.info/sites/default/files/images/logo_qonto_carre%20(1).png')
User.last.photo.attach(io: file, filename: 'quonto.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Qonto',  price: '850',  address: '75 Rue des Pyrénées, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Qonto Decouvrez nous sur notre profil !',  total_seats: '227',  seats: '142',  room: '10',  size: '1704',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/6249810f-a8e1-4baa-883e-8cf145bef242/-/crop/6961x4637/0,37/-/resize/2400x1600/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


User.create!({ name: 'Kinéis',  field: 'Iot',  description: 'La connectivité IoT du futur sappelle Kinéis. Universelle, simple, basse consommation, fiable, à un coût accessible au plus grand nombre.',  weblink: 'https://www.kineis.com/',  year_of_creation: 2018,  number_of_employees: 25,  hq_address: '32 Cité des Fleurs',  average_age: 36,  email: 'Kinéis@Kinéis.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 3,  criteria5: 2,  criteria6: 4,  criteria7: 4,  criteria8: 4,  criteria9: 3,  criteria10: 4,  criteria4: 3})
file = URI.open('https://pbs.twimg.com/profile_images/1038910791490129921/pm39Rc_h.jpg')
User.last.photo.attach(io: file, filename: 'kine.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Kinéis',  price: '900',  address: '32 Cité des Fleurs, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Kinéis Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '98',  room: '7',  size: '1176',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/6cefe356-fb7f-473d-940a-24e2c0f6c31f/-/crop/2398x1598/0,1/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')



User.create!({ name: 'Algolia',  field: 'Marketing',  description: 'Algolia Site Search API - Easy To Implement‎',  weblink: 'https://www.algolia.com',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '2 Villa Saïd',  average_age: 34,  email: 'Algolia@Algolia.com',  password: '123456', criteria1: 4,  criteria2: 1,  criteria3: 2,  criteria5: 1,  criteria6: 3,  criteria7: 1,  criteria8: 2,  criteria9: 2,  criteria10: 2,  criteria4: 3})
file = URI.open('https://avatars0.githubusercontent.com/u/2034458?s=280&v=4')
User.last.photo.attach(io: file, filename: 'algo.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Algolia',  price: '720',  address: '2 Villa Saïd, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Algolia Decouvrez nous sur notre profil !',  total_seats: '233',  seats: '50',  room: '4',  size: '600',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/2d4eb1f0-f1e1-48b3-af13-79ad01b01324/-/crop/2398x1598/0,0/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


User.create!({ name: 'Dashlane',  field: 'Cybersécurité',  description: 'Gestionnaire de mots de passe pour particuliers et entreprises',  weblink: 'http://www.dashlane.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '31 Rue de Lisbonne',  average_age: 28,  email: 'Dashlane@Dashlane.com',  password: '123456', criteria1: 1,  criteria2: 3,  criteria3: 4,  criteria5: 1,  criteria6: 2,  criteria7: 3,  criteria8: 2,  criteria9: 2,  criteria10: 1,  criteria4: 3})
file = URI.open('https://perelafouine.com/wp-content/uploads/2020/01/dashlane.jpg')
User.last.photo.attach(io: file, filename: 'dash.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Dashlane',  price: '600',  address: '31 Rue de Lisbonne, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Dashlane Decouvrez nous sur notre profil !',  total_seats: '539',  seats: '86',  room: '6',  size: '1032',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Plutot Burger Quiz ou question pour un Champion ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/22010974-d7a5-456c-8a5b-8fe0fda28b56/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')



User.create!({ name: 'Wynd',  field: 'Retail',  description: 'Logistique et encaissement Omnicanal',  weblink: 'https://www.wynd.eu/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '40 Rue Olivier Métra',  average_age: 36,  email: 'Wynd@Wynd.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 4,  criteria5: 2,  criteria6: 4,  criteria7: 2,  criteria8: 3,  criteria9: 3,  criteria10: 2,  criteria4: 3})
file = URI.open('https://pbs.twimg.com/profile_images/801742734969241600/0Zu0O_Fs_400x400.jpg')
User.last.photo.attach(io: file, filename: 'wyn.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Wynd',  price: '550',  address: '40 Rue Olivier Métra, Paris',  description: "Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourd’hui dans l’un de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Possibilité de places de parkings en sous-sol. Espace actuellement partagé par plusieurs freelances. Il ne reste plus qu’à installer le code du wi-fi ! Venez travailler dans nos locaux et découvrez nous sur notre profil !",  total_seats: '185',  seats: '39',  room: '3',  size: '468',  question1: 'Comment nous avez vous connu ?',  question2: 'Plutot Burger Quiz ou Question pour un Champion ? ',  question3: 'Pour vous le jeudi rime avec ?'})
file = URI.open('https://pictures.bureauxapartager.com/86a9567e-4802-4dcc-b841-6c90e8b963c6/-/crop/7950x5302/0,2/-/resize/2400x1600/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')



User.create!({ name: 'Vade Secure',  field: 'Cybersécurité',  description: 'Vade Secure est le leader mondial en termes de protection prédictive de la messagerie, avec plus de 600 millions de boîtes de réception',  weblink: 'http://www.vadesecure.com',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '2 Rue des Prêtres Saint-séverin',  average_age: 37,  email: 'VadeSecure@VadeSecure.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 4,  criteria5: 1,  criteria6: 2,  criteria7: 3,  criteria8: 3,  criteria9: 1,  criteria10: 1,  criteria4: 3})
file = URI.open('https://www.vadesecure.com/wp-content/uploads/VadeSecure_fb-1.png')
User.last.photo.attach(io: file, filename: 'vade.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Vade Secure',  price: '440',  address: '2 Rue des Prêtres Saint-séverin, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Vade Secure Decouvrez nous sur notre profil !',  total_seats: '423',  seats: '145',  room: '10',  size: '1740',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/76925268-270f-4c13-b87f-923207e77c30/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


User.create!({ name: 'Payfit',  field: 'RH',  description: 'Logiciel de paie et RH en ligne',  weblink: 'https://payfit.com',  year_of_creation: 2015,  number_of_employees: 96,  hq_address: '76 Rue Cardinet',  average_age: 36,  email: 'Payfit@Payfit.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 2,  criteria5: 1,  criteria6: 3,  criteria7: 2,  criteria8: 4,  criteria9: 4,  criteria10: 2,  criteria4: 4})
file = URI.open('https://media.licdn.com/dms/image/C4E0BAQHQF70jnjJAGw/company-logo_200_200/0?e=2130105600&v=beta&t=gmk2fiznvELp9VQIZqkTDdi1ygX3XXLVsdwSGofqd3Y')
User.last.photo.attach(io: file, filename: 'pay.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Payfit',  price: '820',  address: '76 Rue Cardinet, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Payfit Decouvrez nous sur notre profil !',  total_seats: '685',  seats: '46',  room: '3',  size: '552',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/0ded83c7-0e77-4a84-8716-2c1dd7e3d225/-/crop/1000x666/0,125/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


puts 'Finished !'



User.create!({ name: 'Heetch',  field: 'Mobilité',  description: 'App VTC | Faibles commissions | Chauffeurs Pro 24/7',  weblink: 'https://www.heetch.com/en/jobs/',  year_of_creation: 2013,  number_of_employees: 25,  hq_address: '3 Avenue Victor Hugo',  average_age: 35,  email: 'Heetch@Heetch.com',  password: '123456', criteria1: 4,  criteria2: 2,  criteria3: 1,  criteria5: 2,  criteria6: 2,  criteria7: 4,  criteria8: 2,  criteria9: 1,  criteria10: 4,  criteria4: 3})
file = URI.open('https://lh3.googleusercontent.com/30vDWp52yB6Aokd5oQ_uRUPsvKuqMpjin4BVDEJh6wtpEQr1HrIugWccudEttThJ5Bc=w300')
User.last.photo.attach(io: file, filename: 'heetch.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Heetch',  price: '550',  address: '3 Avenue Victor Hugo,Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Heetch Decouvrez nous sur notre profil !',  total_seats: '675',  seats: '46',  room: '3',  size: '552',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/3de3c939-183a-411c-87c1-1c8a98090422/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Avis Vérifiés',  field: 'Legaltech',  description: 'Solution davis clients',  weblink: 'https://www.avis-verifies.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '15 Avenue Félix dHerelle',  average_age: 37,  email: 'AvisVérifiés@AvisVérifiés.com',  password: '123456', criteria1: 4,  criteria2: 3,  criteria3: 3,  criteria5: 1,  criteria6: 3,  criteria7: 1,  criteria8: 3,  criteria9: 3,  criteria10: 4,  criteria4: 1})
file = URI.open('https://pbs.twimg.com/profile_images/1176071069997903872/mWnU7nkg_400x400.jpg')
User.last.photo.attach(io: file, filename: 'avis.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Avis Vérifiés',  price: '620',  address: "15 Avenue Félix d'Herelle, Paris",  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Avis Vérifiés Decouvrez nous sur notre profil !',  total_seats: '369',  seats: '140',  room: '10',  size: '1680',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/8b0b250e-839a-4cf1-a255-2bdcc719f8e8/-/crop/2398x1598/0,0/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Hoppen',  field: 'Med / Biotech',  description: 'HOPPEN met son expertise technologique au service de tous les établissements de santé pour les accompagner dans leur Transformation Digitale.',  weblink: 'http://www.hoppen.care/',  year_of_creation: 2011,  number_of_employees: 25,  hq_address: '6 Square Théophile Gautier',  average_age: 25,  email: 'Hoppen@Hoppen.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 1,  criteria5: 3,  criteria6: 3,  criteria7: 1,  criteria8: 4,  criteria9: 2,  criteria10: 3,  criteria4: 3})
file = URI.open('https://www.unexo.fr/wp-content/uploads/2019/03/Logos_Hoppen_BASE.jpg')
User.last.photo.attach(io: file, filename: 'hoppen.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Hoppen',  price: '325',  address: '6 Square Théophile Gautier, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Hoppen Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '20',  room: '3',  size: '420',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/6f3b4027-c897-46a3-8a95-e80c2514cd33/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Diabeloop',  field: 'Med / Biotech',  description: 'Diabeloop automatise et personnalise le traitement du diabète ...',  weblink: 'http://www.diabeloop.fr',  year_of_creation: 2015,  number_of_employees: 110,  hq_address: '67 Rue Saint-antoine',  average_age: 26,  email: 'Diabeloop@Diabeloop.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria5: 2,  criteria6: 2,  criteria7: 3,  criteria8: 1,  criteria9: 3,  criteria10: 4,  criteria4: 3})
file = URI.open('https://platform.estimeo.com/_/ext/sync/open_5b057f60d6559a00199e5bed/ques_5dce9b7a776c86001aac4360')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Diabeloop',  price: '760',  address: '67 Rue Saint-antoine, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Diabeloop Decouvrez nous sur notre profil !',  total_seats: '227',  seats: '38',  room: '3',  size: '456',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/391e6f3f-d4c5-4fc3-a7d1-5206049e3b23/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Blade Shadow',  field: 'Data',  description: 'Blade est une société française spécialisée dans le cloud computing (ordinateur à distance) via son service « Shadow ».',  weblink: 'http://shadow.tech',  year_of_creation: 2015,  number_of_employees: 110,  hq_address: '105 Rue des Couronnes',  average_age: 35,  email: 'BladeShadow@BladeShadow.com',  password: '123456', criteria1: 1,  criteria2: 1,  criteria3: 2,  criteria5: 3,  criteria6: 2,  criteria7: 1,  criteria8: 2,  criteria9: 3,  criteria10: 4,  criteria4: 1})
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Logo_Shadow_Cloud_Gaming.jpg/1200px-Logo_Shadow_Cloud_Gaming.jpg')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Blade Shadow',  price: '620',  address: '105 Rue des Couronnes, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Blade Shadow Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '45',  room: '3',  size: '540',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/d91bbc5b-2598-4dac-bb49-017eeb7faccc/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')


User.create!({ name: 'Swile',  field: 'Foodtech',  description: 'Découvrez la seule carte qui regroupe vos titres-restaurants et titres cadeau.',  weblink: 'https://www.swile.co/',  year_of_creation: 2017,  number_of_employees: 110,  hq_address: '61 Boulevard de Beauséjour',  average_age: 25,  email: 'Lunchr/Swile@Lunchr/Swile.com',  password: '123456', criteria1: 3,  criteria2: 3,  criteria3: 2,  criteria5: 2,  criteria6: 3,  criteria7: 1,  criteria8: 4,  criteria9: 1,  criteria10: 1,  criteria4: 4})
file = URI.open('https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco/o06ykxl7cyymd1pziqrb')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Swile',  price: '600',  address: '61 Boulevard de Beauséjour, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Swile Decouvrez nous sur notre profil !',  total_seats: '233',  seats: '85',  room: '6',  size: '1020',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/d05d8e2c-6308-49ee-b81f-0fecc205c7c4/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Flying Whales',  field: 'Mobilité',  description: 'Le projet vise à développer un dirigeable rigide, long de 154 mètres et doté dune vitesse de croisière de 100 km/h.',  weblink: 'http://flying-whales.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '74 Rue de Vaugirard',  average_age: 30,  email: 'FlyingWhales@FlyingWhales.com',  password: '123456', criteria1: 1,  criteria2: 1,  criteria3: 4,  criteria5: 1,  criteria6: 2,  criteria7: 2,  criteria8: 4,  criteria9: 3,  criteria10: 4,  criteria4: 3})
file = URI.open('https://globalcorporateventuring.com/content/uploads/2018/08/Flying_Whales.png')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Flying Whales',  price: '580',  address: '74 Rue de Vaugirard, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Flying Whales Decouvrez nous sur notre profil !',  total_seats: '539',  seats: '65',  room: '5',  size: '780',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/97e6efb7-3a27-48a4-99d3-aebf895c99b3/-/crop/1730x1152/160,0/-/preview/-/quality/lightest/-/resize/450x/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Acticor Biotech',  field: 'Med / Biotech',  description: 'For a safe and effective treatment of stroke',  weblink: 'https://acticor-biotech.com/',  year_of_creation: 2013,  number_of_employees: 25,  hq_address: '33 Rue des Alouettes',  average_age: 26,  email: 'ActicorBiotech@ActicorBiotech.com',  password: '123456', criteria1: 2,  criteria2: 4,  criteria3: 4,  criteria5: 2,  criteria6: 4,  criteria7: 2,  criteria8: 1,  criteria9: 2,  criteria10: 3,  criteria4: 4})
file = URI.open('https://gust-production.s3.amazonaws.com/uploads/startup/logo_image/447367/logoACB5_20square.png')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Acticor Biotech',  price: '480',  address: '33 Rue des Alouettes, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Acticor Biotech Decouvrez nous sur notre profil !',  total_seats: '185',  seats: '25',  room: '2',  size: '300',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/b47fadd7-a256-4611-91e4-452cf4d9eca5/-/crop/1730x1152/182,0/-/preview/-/quality/lightest/-/resize/450x/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Microphyt',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'http://www.microphyt.eu/',  year_of_creation: 2007,  number_of_employees: 25,  hq_address: '108 Rue du Bac',  average_age: 29,  email: 'Microphyt@Microphyt.com',  password: '123456', criteria1: 3,  criteria2: 1,  criteria3: 3,  criteria5: 3,  criteria6: 3,  criteria7: 3,  criteria8: 4,  criteria9: 2,  criteria10: 1,  criteria4: 4})
file = URI.open('https://lh3.googleusercontent.com/OUoxoH06ByWge8VZJSQnzDs_GBmGa5MozLNu-yBjnKVobEZXp8CGdyAtufITVR6OxkiwXX3VYNLsd2PPwA')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Microphyt',  price: '490',  address: '108 Rue du Bac, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Microphyt Decouvrez nous sur notre profil !',  total_seats: '423',  seats: '10',  room: '1',  size: '120',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/e2b515bc-b80f-43ee-859d-a7224ddc8c92/-/crop/3378x2250/313,0/-/resize/2400x1600/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')

User.create!({ name: 'Lemon Way',  field: 'Fintech',  description: 'Solution de paiement automatisée et 100% configurable pour marketplaces, plateformes de crowdfunding',  weblink: 'https://www.lemonway.com/',  year_of_creation: 2007,  number_of_employees: 110,  hq_address: '1 Rue Dupuy de Lôme',  average_age: 37,  email: 'LemonWay@LemonWay.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 3,  criteria5: 2,  criteria6: 2,  criteria7: 1,  criteria8: 2,  criteria9: 4,  criteria10: 2,  criteria4: 4})
file = URI.open('https://pbs.twimg.com/profile_images/720964431115653121/bdsTfZF-.jpg')
User.last.photo.attach(io: file, filename: 'diableloop.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Lemon Way',  price: '510',  address: '1 Rue Dupuy de Lôme, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Lemon Way Decouvrez nous sur notre profil !',  total_seats: '685',  seats: '20',  room: '1',  size: '240',  question1: 'Quelle mesure covid avez vous implémenter dans votre entreprise ?',  question2: 'Comment qualiferiez vous la culture de votre entreprise en quelques mots ? ',  question3: 'En quoi pensez vous que nos entreprises sont elles similaires ?'})
file = URI.open('https://pictures.bureauxapartager.com/0fccc7ea-bbc5-48f1-816c-17483c5bbb2d/-/resize/2400x1800/-/quality/lightest/-/resize/450x/')
Offer.last.photos.attach(io: file, filename: 'meero.png', content_type: 'image/png')



puts "Offers created"



