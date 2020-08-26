# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating User...'

User.create!({ name: 'Meero',  field: 'Marketing',  description: 'Where freedom, community and creativity come together',  weblink: 'https://www.meero.com',  year_of_creation: 2014,  number_of_employees: 25,  hq_address: '17 Avenue Paul Doumer',  average_age: 37,  email: 'Meero@Meero.com',  password: 'sXJnxtT6', criteria1: 3,  criteria2: 2,  criteria3: 4,  criteria4: 1})
User.create!({ name: 'Doctolib',  field: 'Marketing',  description: 'Prise de rendez-vous en ligne – Applications sur ...',  weblink: 'http://www.doctolib.fr',  year_of_creation: 2013,  number_of_employees: 325,  hq_address: '42 Rue Damrémont',  average_age: 30,  email: 'Doctolib@Doctolib.com',  password: 'tYsq9CJH', criteria1: 4,  criteria2: 1,  criteria3: 1,  criteria4: 4})
User.create!({ name: 'ManoMano',  field: 'Ecommerce',  description: 'Achat en ligne bricolage, rénovation et jardinage',  weblink: 'http://www.manomano.fr/',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '56 Avenue de Suffren',  average_age: 26,  email: 'ManoMano@ManoMano.com',  password: 'axvYn25M', criteria1: 4,  criteria2: 3,  criteria3: 4,  criteria4: 4})
User.create!({ name: 'Qonto',  field: 'Fintech',  description: 'Qonto Compte Pro en Ligne - Entreprises & Indépendants‎',  weblink: 'http://qonto.eu',  year_of_creation: 2016,  number_of_employees: 325,  hq_address: '75 Rue des Pyrénées',  average_age: 36,  email: 'Qonto@Qonto.com',  password: 'mCJjW8Pc', criteria1: 1,  criteria2: 2,  criteria3: 1,  criteria4: 1})
User.create!({ name: 'Kinéis',  field: 'Iot',  description: 'La connectivité IoT du futur sappelle Kinéis. Universelle, simple, basse consommation, fiable, à un coût accessible au plus grand nombre.',  weblink: 'https://www.kineis.com/',  year_of_creation: 2018,  number_of_employees: 25,  hq_address: '32 Cité des Fleurs',  average_age: 32,  email: 'Kinéis@Kinéis.com',  password: 'Ek4ThZRx', criteria1: 4,  criteria2: 2,  criteria3: 2,  criteria4: 2})
User.create!({ name: 'Algolia',  field: 'Marketing',  description: 'Algolia Site Search API - Easy To Implement‎',  weblink: 'https://www.algolia.com',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '2 Villa Saïd',  average_age: 36,  email: 'Algolia@Algolia.com',  password: '7bjyBwxq', criteria1: 2,  criteria2: 1,  criteria3: 2,  criteria4: 1})
User.create!({ name: 'Dashlane',  field: 'Cybersécurité',  description: 'Gestionnaire de mots de passe pour particuliers et entreprises',  weblink: 'http://www.dashlane.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '31 Rue de Lisbonne',  average_age: 37,  email: 'Dashlane@Dashlane.com',  password: 'zHxR8hSw', criteria1: 4,  criteria2: 3,  criteria3: 2,  criteria4: 3})
User.create!({ name: 'Wynd',  field: 'Retail',  description: 'Logistique et encaissement Omnicanal',  weblink: 'https://www.wynd.eu/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '40 Rue Olivier Métra',  average_age: 28,  email: 'Wynd@Wynd.com',  password: 'Bfe3LGHW', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 2})
User.create!({ name: 'Vade Secure',  field: 'Cybersécurité',  description: 'Vade Secure est le leader mondial en termes de protection prédictive de la messagerie, avec plus de 600 millions de boîtes de réception',  weblink: 'http://www.vadesecure.com',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '2 Rue des Prêtres Saint-séverin',  average_age: 28,  email: 'VadeSecure@VadeSecure.com',  password: '3rSFm4La', criteria1: 1,  criteria2: 2,  criteria3: 2,  criteria4: 4})
User.create!({ name: 'Payfit',  field: 'RH',  description: 'Logiciel de paie et RH en ligne',  weblink: 'https://payfit.com',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '76 Rue Cardinet',  average_age: 33,  email: 'Payfit@Payfit.com',  password: 'FqebQL9S', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 3})
User.create!({ name: 'Alizé Pharma 3',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: '',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '36 Boulevard Voltaire',  average_age: 25,  email: 'AlizéPharma3@AlizéPharma3.com',  password: 'tXd7UJAW', criteria1: 2,  criteria2: 2,  criteria3: 3,  criteria4: 2})
User.create!({ name: 'Bioserenity',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'https://www.bioserenity.com/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '95 Boulevard Macdonald',  average_age: 31,  email: 'Bioserenity@Bioserenity.com',  password: '9jD823hd', criteria1: 4,  criteria2: 3,  criteria3: 1,  criteria4: 4})
User.create!({ name: 'LumApps',  field: 'RH',  description: 'Intranet Social & Collaboratif‎',  weblink: 'https://www.lumapps.com/',  year_of_creation: 2012,  number_of_employees: 25,  hq_address: '11 Cité Debergue',  average_age: 32,  email: 'LumApps@LumApps.com',  password: 'yf2pDHMv', criteria1: 2,  criteria2: 2,  criteria3: 3,  criteria4: 1})
User.create!({ name: 'Mirakl',  field: 'Marketing',  description: '1er editeur de solutions de Marketplace',  weblink: 'http://www.mirakl.com',  year_of_creation: 2011,  number_of_employees: 110,  hq_address: '10 Rue du Louvre',  average_age: 32,  email: 'Mirakl@Mirakl.com',  password: 'Byc47wUz', criteria1: 3,  criteria2: 4,  criteria3: 3,  criteria4: 3})
User.create!({ name: 'M2i Life Sciences',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'https://www.m2i-lifesciences.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '101 Boulevard Arago',  average_age: 32,  email: 'M2iLifeSciences@M2iLifeSciences.com',  password: 'wDj8VGnp', criteria1: 1,  criteria2: 4,  criteria3: 2,  criteria4: 4})
User.create!({ name: 'Vestiaire Collective',  field: 'Retail',  description: 'Vendez vos pièces non-portées‎',  weblink: 'http://www.vestiairecollective.com',  year_of_creation: 2009,  number_of_employees: 110,  hq_address: '227 Avenue Jean Jaurés',  average_age: 38,  email: 'VestiaireCollective@VestiaireCollective.com',  password: '59cWXJKa', criteria1: 1,  criteria2: 4,  criteria3: 4,  criteria4: 4})
User.create!({ name: 'Shift Technology',  field: 'Cybersécurité',  description: 'Les solutions SaaS fondées sur lIA de Shift aident les assureurs à vaincre la fraude',  weblink: 'https://www.shift-technology.com/fr/',  year_of_creation: 2014,  number_of_employees: 325,  hq_address: '9 RUE MARIA HELENA VIEIRA DA SILVA',  average_age: 28,  email: 'ShiftTechnology@ShiftTechnology.com',  password: '8TbyfB25', criteria1: 1,  criteria2: 3,  criteria3: 1,  criteria4: 1})
User.create!({ name: 'ContentSquare',  field: 'Marketing',  description: 'La Solution UX Web et Mobile‎',  weblink: 'https://contentsquare.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '53 Rue Jean-pierre Timbaud',  average_age: 25,  email: 'ContentSquare@ContentSquare.com',  password: 'qGjD3rQk', criteria1: 2,  criteria2: 4,  criteria3: 4,  criteria4: 2})
User.create!({ name: 'Alan',  field: 'Fintech',  description: 'Finies la paperasse et lopacité, on a réinventé lassurance santé.',  weblink: 'https://www.alan.com',  year_of_creation: 2016,  number_of_employees: 25,  hq_address: '61 Rue du Chevaleret',  average_age: 29,  email: 'Alan@Alan.com',  password: 'E7gSZxYw', criteria1: 2,  criteria2: 2,  criteria3: 4,  criteria4: 2})
User.create!({ name: 'Dynacure',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'https://www.dynacure.com/',  year_of_creation: 2016,  number_of_employees: 25,  hq_address: '31 Rue Dulong',  average_age: 28,  email: 'Dynacure@Dynacure.com',  password: '73MhwUpm', criteria1: 4,  criteria2: 2,  criteria3: 2,  criteria4: 3})
User.create!({ name: 'JobTeaser',  field: 'RH',  description: 'Offres dEmplois et de Stages‎',  weblink: 'http://corporate.jobteaser.com/',  year_of_creation: 2008,  number_of_employees: 110,  hq_address: '61 Rue Réaumur',  average_age: 26,  email: 'JobTeaser@JobTeaser.com',  password: 'Uafqpb36', criteria1: 2,  criteria2: 2,  criteria3: 1,  criteria4: 4})
User.create!({ name: 'MusicWorldMedia',  field: 'Divertissement',  description: 'Edite des applications couvrant les principaux besoins de la musique',  weblink: 'https://musicworldmedia.com/',  year_of_creation: 2012,  number_of_employees: 110,  hq_address: '35 Rue de Rome',  average_age: 27,  email: 'MusicWorldMedia@MusicWorldMedia.com',  password: 'JPtgGBE6', criteria1: 2,  criteria2: 1,  criteria3: 1,  criteria4: 4})
User.create!({ name: 'Imcheck Therapeutics',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'https://www.imchecktherapeutics.com/',  year_of_creation: 2015,  number_of_employees: 25,  hq_address: '13 Rue du Borrégo',  average_age: 35,  email: 'ImcheckTherapeutics@ImcheckTherapeutics.com',  password: 'H3eGmbqM', criteria1: 1,  criteria2: 4,  criteria3: 2,  criteria4: 2})
User.create!({ name: 'Dental Monitoring',  field: 'Med / Biotech',  description: 'Dental Monitoring a une mission : concevoir des solutions capables de maximiser les traitements de vos patients.',  weblink: 'https://dental-monitoring.com/',  year_of_creation: 2013,  number_of_employees: 25,  hq_address: '96 Rue Cambronne',  average_age: 29,  email: 'DentalMonitoring@DentalMonitoring.com',  password: 'hDVP7n4w', criteria1: 3,  criteria2: 1,  criteria3: 4,  criteria4: 1})
User.create!({ name: 'Talentsoft',  field: 'RH',  description: 'Digitalisation RH - Gestion de Talents & Formation‎',  weblink: 'http://www.talentsoft.com',  year_of_creation: 2007,  number_of_employees: 725,  hq_address: '43 Quai de la Loire',  average_age: 30,  email: 'Talentsoft@Talentsoft.com',  password: 'FfqVpM5P', criteria1: 1,  criteria2: 2,  criteria3: 2,  criteria4: 2})
User.create!({ name: 'Ubitransport',  field: 'Mobilité',  description: 'Solutions numériques de gestion temps réel des réseaux de transports publics de voyageurs pour les filières scolaire, urbain, interurbain et à la demande.',  weblink: 'http://www.ubitransport.com',  year_of_creation: 2012,  number_of_employees: 25,  hq_address: '37 Rue Bonnet',  average_age: 35,  email: 'Ubitransport@Ubitransport.com',  password: 'CpbS9hFD', criteria1: 3,  criteria2: 4,  criteria3: 1,  criteria4: 4})
User.create!({ name: 'Klaxoon',  field: 'Autres',  description: 'Renforcez le Collectif avec des Réunions Participatives, Agiles et Efficaces !',  weblink: 'https://klaxoon.com/',  year_of_creation: 2014,  number_of_employees: 110,  hq_address: '9 Rue Vauquelin',  average_age: 38,  email: 'Klaxoon@Klaxoon.com',  password: 'svLWTg8n', criteria1: 3,  criteria2: 1,  criteria3: 3,  criteria4: 2})
User.create!({ name: 'Akeneo',  field: 'Marketing',  description: 'Open Source PIM',  weblink: 'http://www.akeneo.com',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '135 Boulevard Raspail',  average_age: 27,  email: 'Akeneo@Akeneo.com',  password: 'puMmbAB8', criteria1: 3,  criteria2: 3,  criteria3: 2,  criteria4: 2})
User.create!({ name: 'Lydia',  field: 'Fintech',  description: 'Lapplication de paiement mobile',  weblink: 'https://lydia-app.com',  year_of_creation: 2011,  number_of_employees: 25,  hq_address: '13 Rue de Châteaudun',  average_age: 25,  email: 'Lydia@Lydia.com',  password: 'fu394S5N', criteria1: 3,  criteria2: 4,  criteria3: 4,  criteria4: 3})
User.create!({ name: 'Finexkap',  field: 'Fintech',  description: 'Affacturage pour TPE et PME - Sans engagement ni caution‎',  weblink: 'http://www.finexkap.com',  year_of_creation: 2012,  number_of_employees: 25,  hq_address: '5 Rue André Gide',  average_age: 32,  email: 'Finexkap@Finexkap.com',  password: 'AjL42trC', criteria1: 1,  criteria2: 2,  criteria3: 1,  criteria4: 2})
User.create!({ name: 'Tissium',  field: 'Med / Biotech',  description: 'Med / Biotech',  weblink: 'http://www.tissium.com',  year_of_creation: 2013,  number_of_employees: 110,  hq_address: '37 Boulevard de Rochechouart',  average_age: 26,  email: 'Tissium@Tissium.com',  password: 'JyQ84KBW', criteria1: 4,  criteria2: 1,  criteria3: 2,  criteria4: 1})
User.create!({ name: 'Addev Materials',  field: 'Data',  description: 'Transformateur de matériaux',  weblink: 'https://www.addevmaterials.fr/',  year_of_creation: 2006,  number_of_employees: 110,  hq_address: '28 Rue Henri Regnault',  average_age: 37,  email: 'AddevMaterials@AddevMaterials.com',  password: '7bek9HJU', criteria1: 1,  criteria2: 2,  criteria3: 4,  criteria4: 1})
User.create!({ name: '360Learning',  field: 'Edtech',  description: 'La 1ère plateforme de Collaborative Learning',  weblink: 'https://360learning.com',  year_of_creation: 2010,  number_of_employees: 110,  hq_address: '8 Rue du Vieux Colombier',  average_age: 38,  email: '360Learning@360Learning.com',  password: '3pvDHdyW', criteria1: 4,  criteria2: 3,  criteria3: 2,  criteria4: 3})
User.create!({ name: 'Brut',  field: 'Marketing',  description: 'Le média global 100% vidéo - Brut.',  weblink: 'https://brutdecom.fr',  year_of_creation: 2020,  number_of_employees: 9,  hq_address: '5 RUE HENRY MONNIER',  average_age: 32,  email: 'Brut@Brut.com',  password: '8cVJB2mZ', criteria1: 2,  criteria2: 1,  criteria3: 1,  criteria4: 2})

puts 'Finished !'


puts 'Begin Offer!'

Offer.create!({ user_id: 20})

puts "Done Offer"



