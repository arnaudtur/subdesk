# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts 'Creating User...'

User.create!({ name: 'Meero',  field: 'Marketing',  description: 'Where freedom, community and creativity come together',  weblink: 'https://www.meero.com',  year_of_creation: 2014,  number_of_employees: 25,  hq_address: '17 Avenue Paul Doumer',  average_age: 30,  email: 'Meero@Meero.com',  password: '123456', criteria1: 4,  criteria2: 1,  criteria4: 2,  criteria5: 3,  criteria6: 1,  criteria7: 2,  criteria8: 4,  criteria9: 4,  criteria10: 2})
file = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/65094392_2826146177458673_6324879272288714752_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=HSOYa2o39MIAX8UUmBM&_nc_ht=scontent-cdg2-1.xx&oh=6f08760e69411c3bf8bcc5e0846807d8&oe=5F6D81D2')
User.last.photo.attach(io: file, filename: 'meero.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Meero',  price: '500',  address: '17 Avenue Paul Doumer,Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Meero Decouvrez nous sur notre profil !',  total_seats: '675',  seats: '48',  room: '3',  size: '576',  question1: 'Que pensez vous des mesures covid ?',  question2: 'Quels sont vos horaires dactivités ?',  question3: 'Parlez nous de comment vous gérer le knowledge management au sein de votre organisations ?'})
file = URI.open('https://pictures.bureauxapartager.com/4519dfb3-35f9-4847-b71a-4f9bd3d42997/-/crop/2397x1596/0,2/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Meero.png', content_type: 'image/png')


puts "meero done"

User.create!({ name: 'Doctolib',  field: 'Marketing',  description: 'Prise de rendez-vous en ligne – Applications sur ...',  weblink: 'http://www.doctolib.fr',  year_of_creation: 2013,  number_of_employees: 325,  hq_address: '42 Rue Damrémont',  average_age: 37,  email: 'Doctolib@Doctolib.com',  password: '123456', criteria1: 2,  criteria2: 4,  criteria3: 4,  criteria5: 4,  criteria6: 2,  criteria7: 1,  criteria8: 3,  criteria9: 2,  criteria10: 1,  criteria4: 4})
file = URI.open('https://www.doctolib.fr/icon_patient/180x180.png')
User.last.photo.attach(io: file, filename: 'doctolib.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Doctolib',  price: '440',  address: '42 Rue Damrémont,Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Doctolib Decouvrez nous sur notre profil !',  total_seats: '369',  seats: '51',  room: '4',  size: '612',  question1: 'Vous estimez vous bruyants ?',  question2: 'Aimez vous les plantes ?',  question3: 'Appreciez vous les activités extra professionelles au bureau ?'})
file = URI.open('https://pictures.bureauxapartager.com/3ec7c0fd-f87b-402d-bed8-47d179823ca2/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Doctolib.png', content_type: 'image/png')
User.create!({ name: 'ManoMano',  field: 'Ecommerce',  description: 'Achat en ligne bricolage, rénovation et jardinage',  weblink: 'http://www.manomano.fr/',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '56 Avenue de Suffren',  average_age: 38,  email: 'ManoMano@ManoMano.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 2,  criteria5: 1,  criteria6: 4,  criteria7: 2,  criteria8: 4,  criteria9: 3,  criteria10: 3,  criteria4: 2})
file = URI.open('https://moralscore.org/media/icons/large/ManoMano.svg')
User.last.photo.attach(io: file, filename: 'mano.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'ManoMano',  price: '650',  address: '56 Avenue de Suffren, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez ManoMano Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '83',  room: '6',  size: '996',  question1: 'Decrivez votre culture dentreprise en quelques mots ',  question2: 'Comment qualiferiez vous votre activité ',  question3: 'Etes vous pratiquant du flex office ?'})
file = URI.open('https://pictures.bureauxapartager.com/37643e03-3c0d-4998-af25-bbee1d87f960/-/crop/2398x1600/0,0/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'ManoMano.png', content_type: 'image/png')
User.create!({ name: 'Qonto',  field: 'Fintech',  description: 'Qonto Compte Pro en Ligne - Entreprises & Indépendants‎',  weblink: 'http://qonto.eu',  year_of_creation: 2016,  number_of_employees: 325,  hq_address: '75 Rue des Pyrénées',  average_age: 30,  email: 'Qonto@Qonto.com',  password: '123456', criteria1: 3,  criteria2: 2,  criteria3: 4,  criteria5: 3,  criteria6: 2,  criteria7: 4,  criteria8: 2,  criteria9: 1,  criteria10: 2,  criteria4: 1})
file = URI.open('https://entreprises.selectra.info/sites/default/files/images/logo_qonto_carre%20(1).png')
User.last.photo.attach(io: file, filename: 'quonto.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Qonto',  price: '850',  address: '75 Rue des Pyrénées, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Qonto Decouvrez nous sur notre profil !',  total_seats: '227',  seats: '142',  room: '10',  size: '1704',  question1: 'Seriez vous apte à cohabiter avec plusieurs entreprises dans vos espaces ?',  question2: 'Avez vous le besoin de recevoir des visiteurs ?',  question3: 'Pourquoi êtes vous intérressé pour cohabiter avec nous ?'})
file = URI.open('https://pictures.bureauxapartager.com/6249810f-a8e1-4baa-883e-8cf145bef242/-/crop/6961x4637/0,37/-/resize/2400x1600/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Qonto.png', content_type: 'image/png')

User.create!({ name: 'Kinéis',  field: 'Iot',  description: 'La connectivité IoT du futur sappelle Kinéis. Universelle, simple, basse consommation, fiable, à un coût accessible au plus grand nombre.',  weblink: 'https://www.kineis.com/',  year_of_creation: 2018,  number_of_employees: 25,  hq_address: '32 Cité des Fleurs',  average_age: 30,  email: 'Kinéis@Kinéis.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 3,  criteria5: 1,  criteria6: 1,  criteria7: 1,  criteria8: 4,  criteria9: 3,  criteria10: 4,  criteria4: 1})
file = URI.open('https://pbs.twimg.com/profile_images/1038910791490129921/pm39Rc_h.jpg')
User.last.photo.attach(io: file, filename: 'kine.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Kinéis',  price: '900',  address: '32 Cité des Fleurs, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Kinéis Decouvrez nous sur notre profil !',  total_seats: '586',  seats: '98',  room: '7',  size: '1176',  question1: 'Que pensez vous des mesures covid ?',  question2: 'Quels sont vos horaires dactivités ?',  question3: 'Parlez nous de comment vous gérer le knowledge management au sein de votre organisations ?'})
file = URI.open('https://pictures.bureauxapartager.com/6cefe356-fb7f-473d-940a-24e2c0f6c31f/-/crop/2398x1598/0,1/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Kinéis.png', content_type: 'image/png')

User.create!({ name: 'Algolia',  field: 'Marketing',  description: 'Algolia Site Search API - Easy To Implement‎',  weblink: 'https://www.algolia.com',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '2 Villa Saïd',  average_age: 28,  email: 'Algolia@Algolia.com',  password: '123456', criteria1: 3,  criteria2: 2,  criteria3: 3,  criteria5: 3,  criteria6: 3,  criteria7: 1,  criteria8: 1,  criteria9: 4,  criteria10: 1,  criteria4: 3})
file = URI.open('https://avatars0.githubusercontent.com/u/2034458?s=280&v=4')
User.last.photo.attach(io: file, filename: 'algo.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Algolia',  price: '720',  address: '2 Villa Saïd, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Algolia Decouvrez nous sur notre profil !',  total_seats: '233',  seats: '50',  room: '4',  size: '600',  question1: 'Vous estimez vous bruyants ?',  question2: 'Aimez vous les plantes ?',  question3: 'Appreciez vous les activités extra professionelles au bureau ?'})
file = URI.open('https://pictures.bureauxapartager.com/2d4eb1f0-f1e1-48b3-af13-79ad01b01324/-/crop/2398x1598/0,0/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Algolia.png', content_type: 'image/png')

User.create!({ name: 'Dashlane',  field: 'Cybersécurité',  description: 'Gestionnaire de mots de passe pour particuliers et entreprises',  weblink: 'http://www.dashlane.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '31 Rue de Lisbonne',  average_age: 37,  email: 'Dashlane@Dashlane.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 1,  criteria5: 1,  criteria6: 3,  criteria7: 4,  criteria8: 1,  criteria9: 4,  criteria10: 1,  criteria4: 2})
file = URI.open('https://perelafouine.com/wp-content/uploads/2020/01/dashlane.jpg')
User.last.photo.attach(io: file, filename: 'dash.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Dashlane',  price: '600',  address: '31 Rue de Lisbonne, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Dashlane Decouvrez nous sur notre profil !',  total_seats: '539',  seats: '86',  room: '6',  size: '1032',  question1: 'Decrivez votre culture dentreprise en quelques mots ',  question2: 'Comment qualiferiez vous votre activité ',  question3: 'Etes vous pratiquant du flex office ?'})
file = URI.open('https://pictures.bureauxapartager.com/22010974-d7a5-456c-8a5b-8fe0fda28b56/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Dashlane.png', content_type: 'image/png')


User.create!({ name: 'Wynd',  field: 'Retail',  description: 'Logistique et encaissement Omnicanal',  weblink: 'https://www.wynd.eu/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '40 Rue Olivier Métra',  average_age: 28,  email: 'Wynd@Wynd.com',  password: '123456', criteria1: 3,  criteria2: 3,  criteria3: 1,  criteria5: 3,  criteria6: 4,  criteria7: 3,  criteria8: 4,  criteria9: 4,  criteria10: 1,  criteria4: 1})
file = URI.open('https://pbs.twimg.com/profile_images/801742734969241600/0Zu0O_Fs_400x400.jpg')
User.last.photo.attach(io: file, filename: 'wyn.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Wynd',  price: '550',  address: '40 Rue Olivier Métra, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Wynd Decouvrez nous sur notre profil !',  total_seats: '185',  seats: '39',  room: '3',  size: '468',  question1: 'Seriez vous apte à cohabiter avec plusieurs entreprises dans vos espaces ?',  question2: 'Avez vous le besoin de recevoir des visiteurs ?',  question3: 'Pourquoi êtes vous intérressé pour cohabiter avec nous ?'})
file = URI.open('https://pictures.bureauxapartager.com/86a9567e-4802-4dcc-b841-6c90e8b963c6/-/crop/7950x5302/0,2/-/resize/2400x1600/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Wynd.png', content_type: 'image/png')



User.create!({ name: 'Vade Secure',  field: 'Cybersécurité',  description: 'Vade Secure est le leader mondial en termes de protection prédictive de la messagerie, avec plus de 600 millions de boîtes de réception',  weblink: 'http://www.vadesecure.com',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '2 Rue des Prêtres Saint-séverin',  average_age: 38,  email: 'VadeSecure@VadeSecure.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 4,  criteria5: 2,  criteria6: 2,  criteria7: 3,  criteria8: 2,  criteria9: 1,  criteria10: 1,  criteria4: 3})
file = URI.open('https://www.vadesecure.com/wp-content/uploads/VadeSecure_fb-1.png')
User.last.photo.attach(io: file, filename: 'vade.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Vade Secure',  price: '440',  address: '2 Rue des Prêtres Saint-séverin, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Vade Secure Decouvrez nous sur notre profil !',  total_seats: '423',  seats: '145',  room: '10',  size: '1740',  question1: 'Que pensez vous des mesures covid ?',  question2: 'Quels sont vos horaires dactivités ?',  question3: 'Parlez nous de comment vous gérer le knowledge management au sein de votre organisations ?'})
file = URI.open('https://pictures.bureauxapartager.com/76925268-270f-4c13-b87f-923207e77c30/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Vade Secure.png', content_type: 'image/png')

User.create!({ name: 'Payfit',  field: 'RH',  description: 'Logiciel de paie et RH en ligne',  weblink: 'https://payfit.com',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '76 Rue Cardinet',  average_age: 31,  email: 'Payfit@Payfit.com',  password: '123456', criteria1: 4,  criteria2: 2,  criteria3: 2,  criteria5: 3,  criteria6: 2,  criteria7: 3,  criteria8: 4,  criteria9: 3,  criteria10: 1,  criteria4: 2})
file = URI.open('https://media.licdn.com/dms/image/C4E0BAQHQF70jnjJAGw/company-logo_200_200/0?e=2130105600&v=beta&t=gmk2fiznvELp9VQIZqkTDdi1ygX3XXLVsdwSGofqd3Y')
User.last.photo.attach(io: file, filename: 'pay.png', content_type: 'image/png')
Offer.create!({ user_id: User.last.id,  status: 'active',  name: 'Payfit',  price: '820',  address: '76 Rue Cardinet, Paris',  description: 'Occasion à prendre ! Superbes bureaux Paris centre. Installez vos équipes dès aujourdhui dans lun de nos bureaux pré-équipés. Tous les services sont compris (électricité, Internet, ménage...) pour vous simplifier la vie au quotidien. Il ne reste plus quà installer le code du wi-fi ! Venez travailler chez Payfit Decouvrez nous sur notre profil !',  total_seats: '685',  seats: '46',  room: '3',  size: '552',  question1: 'Vous estimez vous bruyants ?',  question2: 'Aimez vous les plantes ?',  question3: 'Appreciez vous les activités extra professionelles au bureau ?'})
file = URI.open('https://pictures.bureauxapartager.com/0ded83c7-0e77-4a84-8716-2c1dd7e3d225/-/crop/1000x666/0,125/-/preview/-/quality/lighter/-/resize/1000x/-/format/webp/')
Offer.last.photos.attach(io: file, filename: 'Payfit.png', content_type: 'image/png')

User.create!({ name: 'Alizé Pharma 3',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: '',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '36 Boulevard Voltaire',  average_age: 27,  email: 'AlizéPharma3@AlizéPharma3.com',  password: '123456', criteria1: 1,  criteria2: 3,  criteria3: 4,  criteria5: 2,  criteria6: 3,  criteria7: 3,  criteria8: 3,  criteria9: 1,  criteria10: 4,  criteria4: 1})
file = URI.open('https://www.sofimac-im.com/wp-content/uploads/2016/05/alizepharma.jpg')
User.last.photo.attach(io: file, filename: 'alize.png', content_type: 'image/png')
User.create!({ name: 'Mirakl',  field: 'Marketing',  description: '1er editeur de solutions de Marketplace',  weblink: 'http://www.mirakl.com',  year_of_creation: 2011,  number_of_employees: 110,  hq_address: '10 Rue du Louvre',  average_age: 38,  email: 'Mirakl@Mirakl.com',  password: '123456', criteria1: 3,  criteria2: 2,  criteria3: 4,  criteria5: 2,  criteria6: 1,  criteria7: 2,  criteria8: 1,  criteria9: 2,  criteria10: 4,  criteria4: 3})
file = URI.open('https://s3-eu-west-1.amazonaws.com/clientsassets/digischool/alternance/prod/company/1567076098.png')
User.last.photo.attach(io: file, filename: 'mira.png', content_type: 'image/png')
User.create!({ name: 'Vestiaire Collective',  field: 'Retail',  description: 'Vendez vos pièces non-portées‎',  weblink: 'http://www.vestiairecollective.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '227 Avenue Jean Jaurés',  average_age: 27,  email: 'VestiaireCollective@VestiaireCollective.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 1,  criteria5: 2,  criteria6: 1,  criteria7: 1,  criteria8: 3,  criteria9: 4,  criteria10: 4,  criteria4: 3})
file = URI.open('https://tropheesdesfutureslicornes.fr/wp-content/uploads/2019/10/logo-linkedin.jpg.png')
User.last.photo.attach(io: file, filename: 'vest.png', content_type: 'image/png')
User.create!({ name: 'Alan',  field: 'Fintech',  description: 'Finies la paperasse et lopacité, on a réinventé lassurance santé.',  weblink: 'https://www.alan.com',  year_of_creation: 2016,  number_of_employees: 25,  hq_address: '61 Rue du Chevaleret',  average_age: 36,  email: 'Alan@Alan.com',  password: '123456', criteria1: 2,  criteria2: 3,  criteria3: 3,  criteria5: 1,  criteria6: 2,  criteria7: 2,  criteria8: 4,  criteria9: 2,  criteria10: 2,  criteria4: 1})
file = URI.open('https://www.foodhoteltech.com/wp-content/uploads/2020/02/alan.png')
User.last.photo.attach(io: file, filename: 'alan.png', content_type: 'image/png')
User.create!({ name: 'JobTeaser',  field: 'RH',  description: 'Offres dEmplois et de Stages‎',  weblink: 'http://corporate.jobteaser.com/',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '61 Rue Réaumur',  average_age: 26,  email: 'JobTeaser@JobTeaser.com',  password: '123456', criteria1: 2,  criteria2: 4,  criteria3: 3,  criteria5: 1,  criteria6: 3,  criteria7: 4,  criteria8: 1,  criteria9: 1,  criteria10: 3,  criteria4: 1})
file = URI.open('https://s3-eu-west-1.amazonaws.com/jt-jobteaser-assets-production/assets/emails/commun/logo_vertical_blanc_fond_vert.png')
User.last.photo.attach(io: file, filename: 'job.png', content_type: 'image/png')
User.create!({ name: 'Talentsoft',  field: 'RH',  description: 'Digitalisation RH - Gestion de Talents & Formation‎',  weblink: 'http://www.talentsoft.com',  year_of_creation: 2007,  number_of_employees: 725,  hq_address: '43 Quai de la Loire',  average_age: 32,  email: 'Talentsoft@Talentsoft.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 1,  criteria5: 1,  criteria6: 1,  criteria7: 1,  criteria8: 2,  criteria9: 4,  criteria10: 1,  criteria4: 2})
file = URI.open('https://i.pinimg.com/280x280_RS/23/fd/56/23fd56dd7280472de0da4ce715dcdc44.jpg')
User.last.photo.attach(io: file, filename: 'talent.png', content_type: 'image/png')
puts 'Finished !'











puts "Offers created"



