# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Creating User...'

User.create!({ name: 'Meero',  field: 'Marketing',  description: 'Where freedom, community and creativity come together',  weblink: 'https://www.meero.com',  year_of_creation: 2014,  number_of_employees: 25,  hq_address: '17 Avenue Paul Doumer',  average_age: 37,  email: 'Meero@Meero.com',  password: '123456', criteria1: 3,  criteria2: 2,  criteria3: 4,  criteria4: 1})
file = URI.open('https://scontent-cdg2-1.xx.fbcdn.net/v/t1.0-9/65094392_2826146177458673_6324879272288714752_n.jpg?_nc_cat=108&_nc_sid=09cbfe&_nc_ohc=HSOYa2o39MIAX8UUmBM&_nc_ht=scontent-cdg2-1.xx&oh=6f08760e69411c3bf8bcc5e0846807d8&oe=5F6D81D2')
User.last.photo.attach(io: file, filename: 'meero.png', content_type: 'image/png')
User.create!({ name: 'Doctolib',  field: 'Marketing',  description: 'Prise de rendez-vous en ligne – Applications sur ...',  weblink: 'http://www.doctolib.fr',  year_of_creation: 2013,  number_of_employees: 325,  hq_address: '42 Rue Damrémont',  average_age: 30,  email: 'Doctolib@Doctolib.com',  password: '123456', criteria1: 4,  criteria2: 1,  criteria3: 1,  criteria4: 4})
file = URI.open('https://www.doctolib.fr/icon_patient/180x180.png')
User.last.photo.attach(io: file, filename: 'doctolib.png', content_type: 'image/png')
User.create!({ name: 'ManoMano',  field: 'Ecommerce',  description: 'Achat en ligne bricolage, rénovation et jardinage',  weblink: 'http://www.manomano.fr/',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '56 Avenue de Suffren',  average_age: 26,  email: 'ManoMano@ManoMano.com',  password: '123456', criteria1: 4,  criteria2: 3,  criteria3: 4,  criteria4: 4})
file = URI.open('https://moralscore.org/media/icons/large/ManoMano.svg')
User.last.photo.attach(io: file, filename: 'mano.png', content_type: 'image/png')
User.create!({ name: 'Qonto',  field: 'Fintech',  description: 'Qonto Compte Pro en Ligne - Entreprises & Indépendants‎',  weblink: 'http://qonto.eu',  year_of_creation: 2016,  number_of_employees: 325,  hq_address: '75 Rue des Pyrénées',  average_age: 36,  email: 'Qonto@Qonto.com',  password: '123456', criteria1: 1,  criteria2: 2,  criteria3: 1,  criteria4: 1})
file = URI.open('https://entreprises.selectra.info/sites/default/files/images/logo_qonto_carre%20(1).png')
User.last.photo.attach(io: file, filename: 'quonto.png', content_type: 'image/png')
User.create!({ name: 'Kinéis',  field: 'Iot',  description: 'La connectivité IoT du futur sappelle Kinéis. Universelle, simple, basse consommation, fiable, à un coût accessible au plus grand nombre.',  weblink: 'https://www.kineis.com/',  year_of_creation: 2018,  number_of_employees: 25,  hq_address: '32 Cité des Fleurs',  average_age: 32,  email: 'Kinéis@Kinéis.com',  password: '123456', criteria1: 4,  criteria2: 2,  criteria3: 2,  criteria4: 2})
file = URI.open('https://pbs.twimg.com/profile_images/1038910791490129921/pm39Rc_h.jpg')
User.last.photo.attach(io: file, filename: 'kine.png', content_type: 'image/png')
User.create!({ name: 'Algolia',  field: 'Marketing',  description: 'Algolia Site Search API - Easy To Implement‎',  weblink: 'https://www.algolia.com',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '2 Villa Saïd',  average_age: 36,  email: 'Algolia@Algolia.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 2,  criteria4: 1})
file = URI.open('https://avatars0.githubusercontent.com/u/2034458?s=280&v=4')
User.last.photo.attach(io: file, filename: 'algo.png', content_type: 'image/png')
User.create!({ name: 'Dashlane',  field: 'Cybersécurité',  description: 'Gestionnaire de mots de passe pour particuliers et entreprises',  weblink: 'http://www.dashlane.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '31 Rue de Lisbonne',  average_age: 37,  email: 'Dashlane@Dashlane.com',  password: '123456', criteria1: 4,  criteria2: 3,  criteria3: 2,  criteria4: 3})
file = URI.open('https://perelafouine.com/wp-content/uploads/2020/01/dashlane.jpg')
User.last.photo.attach(io: file, filename: 'dash.png', content_type: 'image/png')
User.create!({ name: 'Wynd',  field: 'Retail',  description: 'Logistique et encaissement Omnicanal',  weblink: 'https://www.wynd.eu/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '40 Rue Olivier Métra',  average_age: 28,  email: 'Wynd@Wynd.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 2})
file = URI.open('https://pbs.twimg.com/profile_images/801742734969241600/0Zu0O_Fs_400x400.jpg')
User.last.photo.attach(io: file, filename: 'wyn.png', content_type: 'image/png')
User.create!({ name: 'Vade Secure',  field: 'Cybersécurité',  description: 'Vade Secure est le leader mondial en termes de protection prédictive de la messagerie, avec plus de 600 millions de boîtes de réception',  weblink: 'http://www.vadesecure.com',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '2 Rue des Prêtres Saint-séverin',  average_age: 28,  email: 'VadeSecure@VadeSecure.com',  password: '123456', criteria1: 1,  criteria2: 2,  criteria3: 2,  criteria4: 4})
file = URI.open('https://www.vadesecure.com/wp-content/uploads/VadeSecure_fb-1.png')
User.last.photo.attach(io: file, filename: 'vade.png', content_type: 'image/png')
User.create!({ name: 'Payfit',  field: 'RH',  description: 'Logiciel de paie et RH en ligne',  weblink: 'https://payfit.com',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '76 Rue Cardinet',  average_age: 33,  email: 'Payfit@Payfit.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 3})
file = URI.open('https://media.licdn.com/dms/image/C4E0BAQHQF70jnjJAGw/company-logo_200_200/0?e=2130105600&v=beta&t=gmk2fiznvELp9VQIZqkTDdi1ygX3XXLVsdwSGofqd3Y')
User.last.photo.attach(io: file, filename: 'pay.png', content_type: 'image/png')
User.create!({ name: 'Alizé Pharma 3',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: '',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '36 Boulevard Voltaire',  average_age: 25,  email: 'AlizéPharma3@AlizéPharma3.com',  password: '123456', criteria1: 2,  criteria2: 2,  criteria3: 3,  criteria4: 2})
file = URI.open('https://www.sofimac-im.com/wp-content/uploads/2016/05/alizepharma.jpg')
User.last.photo.attach(io: file, filename: 'alize.png', content_type: 'image/png')
User.create!({ name: 'Mirakl',  field: 'Marketing',  description: '1er editeur de solutions de Marketplace',  weblink: 'http://www.mirakl.com',  year_of_creation: 2011,  number_of_employees: 110,  hq_address: '10 Rue du Louvre',  average_age: 32,  email: 'Mirakl@Mirakl.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 3,  criteria4: 3})
file = URI.open('https://s3-eu-west-1.amazonaws.com/clientsassets/digischool/alternance/prod/company/1567076098.png')
User.last.photo.attach(io: file, filename: 'mira.png', content_type: 'image/png')
User.create!({ name: 'Vestiaire Collective',  field: 'Retail',  description: 'Vendez vos pièces non-portées‎',  weblink: 'http://www.vestiairecollective.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '227 Avenue Jean Jaurés',  average_age: 38,  email: 'VestiaireCollective@VestiaireCollective.com',  password: '123456', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 4})
file = URI.open('https://tropheesdesfutureslicornes.fr/wp-content/uploads/2019/10/logo-linkedin.jpg.png')
User.last.photo.attach(io: file, filename: 'vest.png', content_type: 'image/png')
User.create!({ name: 'ContentSquare',  field: 'Marketing',  description: 'La Solution UX Web et Mobile‎',  weblink: 'https://contentsquare.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '53 Rue Jean-pierre Timbaud',  average_age: 25,  email: 'ContentSquare@ContentSquare.com',  password: '123456', criteria1: 2,  criteria2: 4,  criteria3: 4,  criteria4: 2})
file = URI.open('https://www.myeventnetwork.com/sites/myeventnetwork.com/files/styles/open_graph/public/2019-07/51352862_2057995957569035_6091412727048175616_o.png?itok=H_LhcXCF')
User.last.photo.attach(io: file, filename: 'cont.png', content_type: 'image/png')
User.create!({ name: 'Alan',  field: 'Fintech',  description: 'Finies la paperasse et lopacité, on a réinventé lassurance santé.',  weblink: 'https://www.alan.com',  year_of_creation: 2016,  number_of_employees: 25,  hq_address: '61 Rue du Chevaleret',  average_age: 29,  email: 'Alan@Alan.com',  password: '123456', criteria1: 2,  criteria2: 2,  criteria3: 4,  criteria4: 2})
file = URI.open('https://www.foodhoteltech.com/wp-content/uploads/2020/02/alan.png')
User.last.photo.attach(io: file, filename: 'alan.png', content_type: 'image/png')
User.create!({ name: 'JobTeaser',  field: 'RH',  description: 'Offres dEmplois et de Stages‎',  weblink: 'http://corporate.jobteaser.com/',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '61 Rue Réaumur',  average_age: 26,  email: 'JobTeaser@JobTeaser.com',  password: '123456', criteria1: 2,  criteria2: 2,  criteria3: 1,  criteria4: 4})
file = URI.open('https://s3-eu-west-1.amazonaws.com/jt-jobteaser-assets-production/assets/emails/commun/logo_vertical_blanc_fond_vert.png')
User.last.photo.attach(io: file, filename: 'job.png', content_type: 'image/png')
User.create!({ name: 'MusicWorldMedia',  field: 'Divertissement',  description: 'Edite des applications couvrant les principaux besoins de la musique',  weblink: 'https://musicworldmedia.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '35 Rue de Rome',  average_age: 27,  email: 'MusicWorldMedia@MusicWorldMedia.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 1,  criteria4: 4})
file = URI.open('https://lh3.googleusercontent.com/eHi97Ahl3LK8zK9EFlc50t098o38IKMaHzWWOHVKIsJXT-hgHHa1bSQ6WZqeFRIIiH87IuSKokNLlYMdZesRNC5T-mlTsg6DYz7V')
User.last.photo.attach(io: file, filename: 'music.png', content_type: 'image/png')
User.create!({ name: 'Talentsoft',  field: 'RH',  description: 'Digitalisation RH - Gestion de Talents & Formation‎',  weblink: 'http://www.talentsoft.com',  year_of_creation: 2007,  number_of_employees: 725,  hq_address: '43 Quai de la Loire',  average_age: 30,  email: 'Talentsoft@Talentsoft.com',  password: '123456', criteria1: 1,  criteria2: 2,  criteria3: 2,  criteria4: 2})
file = URI.open('https://i.pinimg.com/280x280_RS/23/fd/56/23fd56dd7280472de0da4ce715dcdc44.jpg')
User.last.photo.attach(io: file, filename: 'talent.png', content_type: 'image/png')
User.create!({ name: 'Ubitransport',  field: 'Mobilité',  description: 'Solutions numériques de gestion temps réel des réseaux de transports publics de voyageurs pour les filières scolaire, urbain, interurbain et à la demande.',  weblink: 'http://www.ubitransport.com',  year_of_creation: 2012,  number_of_employees: 25,  hq_address: '37 Rue Bonnet',  average_age: 35,  email: 'Ubitransport@Ubitransport.com',  password: '123456', criteria1: 3,  criteria2: 4,  criteria3: 1,  criteria4: 4})
file = URI.open('https://www.francemobilites.fr/sites/frenchmobility/files/styles/l480/public/images/2019/02/LOGO%20-%20Copie_63.jpg?itok=4cSQuEUc')
User.last.photo.attach(io: file, filename: 'ubi.png', content_type: 'image/png')
User.create!({ name: 'Klaxoon',  field: 'Autres',  description: 'Renforcez le Collectif avec des Réunions Participatives, Agiles et Efficaces !',  weblink: 'https://klaxoon.com/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '9 Rue Vauquelin',  average_age: 38,  email: 'Klaxoon@Klaxoon.com',  password: '123456', criteria1: 3,  criteria2: 1,  criteria3: 3,  criteria4: 2})
file = URI.open('https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/b5/af/81/b5af8198-6bcd-2cbd-ef79-26bf475868a0/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/246x0w.png')
User.last.photo.attach(io: file, filename: 'kalx.png', content_type: 'image/png')
User.create!({ name: 'Brut',  field: 'Marketing',  description: 'Le média global 100% vidéo - Brut.',  weblink: 'https://brutdecom.fr',  year_of_creation: 2020,  number_of_employees: 9,  hq_address: '5 RUE HENRY MONNIER',  average_age: 32,  email: 'Brut@Brut.com',  password: '123456', criteria1: 2,  criteria2: 1,  criteria3: 1,  criteria4: 2})
file = URI.open('https://thumbor.sd-cdn.fr/e1oJ8ZLBoaTXxAsQgR6ChSOIx40=/1200x630/cdn.sd-cdn.fr/wp-content/uploads/2020/01/Brut.jpg')
User.last.photo.attach(io: file, filename: 'brut.png', content_type: 'image/png')
puts 'Finished !'






puts "Done Offer"



