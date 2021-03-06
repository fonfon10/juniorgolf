# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Tour.delete_all
Country.delete_all
Province.delete_all
Course.delete_all
Category.delete_all
Gender.delete_all
Level.delete_all
Tournament.delete_all
User.delete_all
Status.delete_all
Competition.delete_all
UserType.delete_all



ut_admin = UserType.create!(name: "Admin")
ut_player = UserType.create!(name: "Player")
ut_Operator = UserType.create!(name: "Operator")
ut_Observer = UserType.create!(name: "Observer")

status_reg = Status.create!(name: "Registered")
status_inconsideration = Status.create!(name: "In Consideration")
status_waitlist = Status.create!(name: "Wait Listed")
status_no = Status.create!(name: "No")

gender_g = Gender.create!(name: "Girls")
gender_b = Gender.create!(name: "Boys")
gender_gb = Gender.create!(name: "Girls & Boys")

level_rec = Level.create!(name: "Recreational")
level_regional = Level.create!(name: "Regional")
level_provincial = Level.create!(name: "Provincial")
level_national = Level.create!(name: "National")
level_international = Level.create!(name: "International")


category_AtomAndUnder = Category.create!(name: "Atom(U11) and Under")
category_PW = Category.create!(name: "Pee-Wee(U13)")
category_A_PW = Category.create!(name: "Atom(11) and Pee-Wee(U13)")
category_Bantam = Category.create!(name: "Bantam(U15)")
category_NA5 = Category.create!(name: "NA")
category_P_Bantam = Category.create!(name: "Pee-Wee(U13)+Bantam(U15)")
category_A_P_B = Category.create!(name: "Atom(U11)+Pee-Wee(U13)+Bantam(U15)")
category_Juv = Category.create!(name: "Juvenile(U17)")
category_NA9 = Category.create!(name: "NA")
category_NA10 = Category.create!(name: "NA")
category_NA11 = Category.create!(name: "NA")
category_NA12 = Category.create!(name: "NA")
category_NA13 = Category.create!(name: "NA")
category_NA14 = Category.create!(name: "NA")
category_A_P_B_Juv = Category.create!(name: "Atom(U11)+Pee-Wee(U13)+Bantam(U15)+Juvenile(U17)")
category_Jun = Category.create!(name: "Junior(U19)")
category_NA17 = Category.create!(name: "NA")
category_NA18 = Category.create!(name: "NA")
category_NA19 = Category.create!(name: "NA")
category_NA20 = Category.create!(name: "NA")
category_NA21 = Category.create!(name: "NA")
category_NA22 = Category.create!(name: "NA")
category_NA23 = Category.create!(name: "NA")
category_Juv_Jun = Category.create!(name: "Juvenile(U17)+Junior(U19)")
category_NA25 = Category.create!(name: "NA")
category_NA26 = Category.create!(name: "NA")
category_NA27 = Category.create!(name: "NA")
category_B_Juv_Jun = Category.create!(name: "Bantam(15)+Juvenile(U17)+Junior(U19)")
category_NA29 = Category.create!(name: "NA")
category_NA30 = Category.create!(name: "NA")
category_all = Category.create!(name: "All")



user_serge = User.create!(first_name: "Serge", last_name: "Lafontaine", email: "slafontaine10@gmail.com", user_type: ut_admin, dob: "21-01-1971", password: "numb10", password_confirmation: "numb10", ovga_team: true, gender: gender_b, category: category_all)
user_ashley = User.create!(first_name: "Ashley", last_name: "Lafontaine", email: "ashleylafontaine27@gmail.com", user_type: ut_player, dob: "27-04-2004", password: "numb10", password_confirmation: "numb10", ovga_team: true, gender: gender_g, category: category_Juv)
user_derek = User.create!(first_name: "Derek", last_name: "MacDonald", email: "Derek.MacDonald@marshesgolfclub.com", user_type: ut_Operator, dob: "21-01-1971", password: "golf123", password_confirmation: "golf123", ovga_team: true, gender: gender_b, category: category_all)
user_jim = User.create!(first_name: "Jim", last_name: "Davidson", email: "jadavidson@bell.net",user_type: ut_Operator, dob: "21-01-1971", password: "golf123", password_confirmation: "golf123", ovga_team: true, gender: gender_b, category: category_all)
user_izzy = User.create!(first_name: "Izzy", last_name: "Ferguson", email: "dgfergy@gmail.com",user_type: ut_player, dob: "10-10-2004", password: "golf123", password_confirmation: "golf123", ovga_team: false, gender: gender_g, category: category_Bantam)



country_Canada = Country.create!(name: "Canada")
country_US = Country.create!(name: "US")

province_Quebec = Province.create!(name: "Quebec")
province_Ontario = Province.create!(name: "Ontario")
province_Alberta = Province.create!(name: "Alberta")
province_NewB = Province.create!(name: "New Brunswick")


course_ROGC = Course.create!(name: "ROGC", address: "1405 Chemin d'Aylmer", city: "Gatineau", province: province_Quebec, country: country_Canada, zip: "J9H 7L2", url: "https://royalottawagolfclub.com/" )
course_Hawkesbury = Course.create!(name: "Hawkesbury", address: "1150 Golf Club Rd", city: "Hawkesbury", province: province_Ontario , country: country_Canada, zip: "K6A 2R2", url: "http://www.hawkesburygolfandcurling.com/" )
course_Pineview = Course.create!(name: "Pine View", address: "1471 Blair Rd", city: "Ottawa", province: province_Ontario , country: country_Canada, zip: "K1B 4S3", url: "http://www.pineview.com/en" )
course_WoodenSticks = Course.create!(name: "Wooden Sticks", address: "40 Elgin Park Dr", city: "Uxbridge", province: province_Ontario , country: country_Canada, zip: "L9P 1N2", url: "https://woodensticks.com/" )
course_BrockvilleCC = Course.create!(name: "Brockville CC", address: "1548 King Street West", city: "Brockville", province: province_Ontario , country: country_Canada, zip: "K6V 5T7", url: "https://brockvillecountryclub.com/" )
course_TangleCreek = Course.create!(name: "Tangle Creek G&CC", address: "4730 25th Sideroad", city: "Thornton", province: province_Ontario , country: country_Canada, zip: "L0L 2N0", url: "" )
course_GrandPortNeuf = Course.create!(name: "Grand Portneuf (Le)", address: "2, route 365", city: "Pont Rouge", province: province_Quebec , country: country_Canada, zip: "G3H 3R4", url: "https://www.legrandportneuf.com/" )
course_BoiseJoly = Course.create!(name: "Les Boisés de Joly (Les)", address: "388 Route Centrale", city: "Joly", province: province_Quebec , country: country_Canada, zip: "G0S 1M0", url: "http://jolygolf.com/" )
course_Glendale = Course.create!(name: "Glendale", address: "9500 Montée Ste-Henriette", city: "Mirabel", province: province_Quebec , country: country_Canada, zip: "J7J 2A1", url: "http://www.golf-glendale.com/fr/index.html" )
course_Marshes = Course.create!(name: "The Marshes", address: "320 Terry Fox Dr", city: "Kanata", province: province_Ontario , country: country_Canada, zip: "K2K 3L1", url: "https://www.marshesgolfclub.com/" )
course_Greensmere = Course.create!(name: "Greensmere G&CC", address: "1717 Bearhill Rd", city: "Carp", province: province_Ontario , country: country_Canada, zip: "K0A 1L0", url: "https://www.greensmere.com/en/" )
course_Galt = Course.create!(name: "Galt CC", address: "750 Coronation Blvd", city: "Cambridge", province: province_Ontario , country: country_Canada, zip: "N1R 8E3", url: "https://www.galtcountryclub.com/" )
course_Rockland = Course.create!(name: "Rockland", address: "301 Montée Outaouais", city: "Rockland", province: province_Ontario , country: country_Canada, zip: "K4K 1K3", url: "http://www.golfrockland.ca/index.php?lang=en" )
course_Lethbridge = Course.create!(name: "Lethbridge CC", address: "101 Country Club Rd", city: "Lethbridge", province: province_Alberta , country: country_Canada, zip: "T1K 7N9", url: "https://lccgolf.com/" )
course_Drummondville = Course.create!(name: "Drummondville", address: "400 Chemin du Golf", city: "Drummondville", province: province_Quebec , country: country_Canada, zip: "J2C 8S9", url: "http://www.golfdrummond.com/" )
course_CoveredBridge = Course.create!(name: "Covered Bridge", address: "190 Golf Club Rd,", city: "Hartland", province: province_NewB , country: country_Canada, zip: "E7P 3K4", url: "https://coveredbridgegolf.nb.ca/" )
course_Pakenham = Course.create!(name: "Pakenham Highlands", address: "112 Mcwatty Rd", city: "Pakenham", province: province_Ontario , country: country_Canada, zip: "K0A 2X0", url: "http://pakenhamhighlandsgolf.com/" )
course_Listowel = Course.create!(name: "Listowel", address: "8380 Fairlane Rd,", city: "Listowel", province: province_Ontario , country: country_Canada, zip: "N4W 3G6", url: "http://www.listowelgolfclub.ca/" )
course_DeerCreek = Course.create!(name: "Deer Creek", address: "2700 Audley Rd", city: "Ajax", province: province_Ontario , country: country_Canada, zip: "L1Z 1T7", url: "https://www.golfdeercreek.com/" )
course_Knowlton = Course.create!(name: "Knowlton", address: "264 Chemin Lakeside", city: "Knowlton", province: province_Quebec , country: country_Canada, zip: "J0E 1V0", url: "http://knowltongc.ca/" )
course_GreenHills = Course.create!(name: "Greenhills", address: "4838 Colonel Talbot Rd", city: "London", province: province_Ontario , country: country_Canada, zip: "N6P 1H7", url: "https://greenhills.clublink.ca/" )
course_Bromont = Course.create!(name: "Chateau Bromont", address: "90, Stanstead street", city: "Bromont", province: province_Quebec , country: country_Canada, zip: "J2L 1K6 ", url: "https://chateaubromont.com/en/golf-chateau-bromont/" )
course_Marlwood = Course.create!(name: "Marlwood G&CC", address: "31 Marlwood Ave,", city: "Wasaga Beach", province: province_Ontario , country: country_Canada, zip: "L9Z 1S8", url: "https://www.marlwoodgolf.com/" )
course_Stoneham = Course.create!(name: "Stoneham", address: "56, Première avenue", city: "Stoneham", province: province_Quebec , country: country_Canada, zip: "G3C 0K7", url: "https://golfstoneham.com/" )
course_Lachute = Course.create!(name: "Lachute", address: "355 Avenue Béthany", city: "Lachute", province: province_Quebec , country: country_Canada, zip: "J8H 3X5", url: "https://www.golflachute.ca/en/" )
course_Loyalist = Course.create!(name: "Loyalist G&CC", address: "1 Loyalist Blvd", city: "Bath", province: province_Ontario , country: country_Canada, zip: "K0H 1G0", url: "http://www.loyalistcc.com/" )
course_montcalm = Course.create!(name: "Montcalm GC", address: "1800, chemin Nadeau", city: "Saint-Liguori", province: province_Quebec , country: country_Canada, zip: "J0K 2X0", url: "http://www.golfmontcalm.qc.ca/" )
course_various = Course.create!(name: "Various", address: "TBD", city: "TBD", province: province_Ontario , country: country_Canada, zip: "TBD", url: "TBD" )

course_RideauView = Course.create!(name: "Rideau View GC", address: "6044 Rideau Valley Dr N", city: "Manotick", province: province_Ontario , country: country_Canada, zip: "K4M 1B3", url: "https://www.rideauview.com/" )
course_Cornwall = Course.create!(name: "Corwall G&CC", address: "6740 Sutherland Ave", city: "Cornwall", province: province_Ontario , country: country_Canada, zip: "K6H 7J3", url: "http://cornwallgolf.com/" )
course_Carleton = Course.create!(name: "Carleton G&YC", address: "6627 Marina Drive", city: "Manotick", province: province_Ontario , country: country_Canada, zip: "K4M 1B3", url: "http://carletongolf.com/" )
course_Prescott = Course.create!(name: "Prescott GC", address: "900 Boundary Street", city: "Prescott", province: province_Ontario , country: country_Canada, zip: "K0E 1T0", url: "http://prescottgolfclub.ca/" )
course_CedarHill = Course.create!(name: "Cedarhill G&CC", address: "56 Cedarhill Drive", city: "Ottawa", province: province_Ontario , country: country_Canada, zip: "K2R 1C5", url: "http://www.cedarhillgolf.com/" )
course_UpperCanada = Course.create!(name: "Upper Canada GC", address: "13745 County Road 2", city: "Morrisburg", province: province_Ontario , country: country_Canada, zip: "K0C 1X0", url: "https://www.uppercanadagolf.com/" )
course_SmithsFalls = Course.create!(name: "Smiths Falls G&CC", address: "125 Golf Club Rd ", city: "Smiths Falls", province: province_Ontario , country: country_Canada, zip: "K7A 4S5", url: "https://www.smithsfallsgolf.com/" )
course_kanata = Course.create!(name: "Kanata G&CC", address: "7000 Campeau Dr", city: "Kanata", province: province_Ontario , country: country_Canada, zip: "K2T 0A3", url: "https://kanata.clublink.ca/" )
course_Equinelle = Course.create!(name: "eQuinelle GC", address: "140 Equinelle Drive RR4", city: "Kemptville", province: province_Ontario , country: country_Canada, zip: "K0G 1J0", url: "https://equinellegolf.ca/" )
#course_ = Course.create!(name: "", address: "", city: "", province: province_ , country: country_Canada, zip: "", url: "" )


tour_pjgt = Tour.create!(acronym: "PJGT", name: "Play Junior Golf Tour", country: country_Canada, url: "https://juniorgolf.herokuapp.com/")
tour_ovga = Tour.create!(acronym: "OVGA", name: "Ottawa Valley Golf Association", country: country_Canada, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/schedule/ovgacrj/index.htm")
tour_gq = Tour.create!(acronym: "GQ", name: "Golf Quebec", country: country_Canada, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/schedule/gqjr/index.htm")
tour_go = Tour.create!(acronym: "GO",name: "Golf Ontario", country: country_Canada, url: "https://gao.ca/new-ontario-junior-rankings/regional-junior-tours-new/")
tour_to = Tour.create!(acronym: "TO",name: "Team Ottawa", country: country_Canada, url: "")
tour_gc = Tour.create!(acronym: "GC",name: "Golf Canada", country: country_Canada, url: "https://golfcanada.ca/")
tour_cjga = Tour.create!(acronym: "CJGA",name: "Canadian Junior Golf Association ", country: country_Canada, url: "https://cjga.com/")
tour_fl = Tour.create!(acronym: "FL",name: "Future Links", country: country_Canada, url: "https://bit.ly/2OCnevd")
tour_other = Tour.create!(acronym: "Other",name: "Other", country: country_Canada, url: " ")





tournament_qcjunioropen = Tournament.create!(name:"Quebec Junior Open", tour:tour_cjga, course:course_Hawkesbury, category: category_all, gender: gender_gb, level:level_provincial, days:2, start_time: "04-05-2019", end_time: "05-05-2019",reg_deadline: "04-04-2019", qual_required: true, comments: "", fee: 175.00, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/tournament/rcga1962/index.htm")
tournament_Ont_U19_G_SpringClassic = Tournament.create!(name:"Ontario Junior (U19) Girls Spring Classic", tour:tour_go, course:course_WoodenSticks, category: category_Jun, gender: gender_g, level:level_provincial, days:3, start_time: "18-05-2019", end_time: "20-05-2019",reg_deadline: "18-04-2019", qual_required: true, comments: "", fee: 175.00, url: "https://www.bluegolf.com/amateur/events/gao198/index.html")
tournament_Ont_U19_B_SpringClassic = Tournament.create!(name:"Ontario Junior (U19) Boys Spring Classic", tour:tour_go, course:course_BrockvilleCC, category: category_Jun, gender: gender_b, level:level_provincial, days:3, start_time: "18-05-2019", end_time: "20-05-2019",reg_deadline: "18-04-2019", qual_required: true, comments: "", fee: 175.00, url: "https://www.bluegolf.com/amateur/events/gao197/index.html")
tournament_fl_ontario_champ = Tournament.create!(name:"Future Links Ontario Championship", tour:tour_fl, course:course_TangleCreek, category: category_Jun, gender: gender_gb, level:level_national, days:3, start_time: "26-05-2019", end_time: "28-05-2019",reg_deadline: "26-04-2019", qual_required: true, comments: "", fee: 250.00, url: "https://golfcanada.bluegolf.com/bluegolf/rcga17/event/rcga172/index.htm")
tournament_qc_PB_classic = Tournament.create!(name:"Quebec Pee-Wee & Bantam Classic", tour:tour_gq, course:course_GrandPortNeuf, category: category_P_Bantam, gender: gender_gb, level:level_provincial, days:2, start_time: "25-05-2019", end_time: "26-05-2019",reg_deadline: "11-05-2019", qual_required: true, comments: "", fee: 137.97 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1972/index.htm")
tournament_ovga_Optimist_springClassic = Tournament.create!(name:"OVGA Optimist Junior Spring Classic", tour:tour_ovga, course:course_Pineview, category: category_all, gender: gender_gb, level:level_regional, days:2, start_time: "8-6-2019", end_time: "9-6-2019",reg_deadline: "18-05-2019", qual_required: false, comments: "", fee: 101.70, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1990/index.htm")
tournament_fl_quebec_champ = Tournament.create!(name:"Future Links Quebec Championship", tour:tour_fl, course:course_BoiseJoly, category: category_Jun, gender: gender_gb, level:level_national, days:3, start_time: "07-06-2019", end_time: "09-06-2019",reg_deadline: "8-05-2019", qual_required: true, comments: "", fee: 250.00, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga198/index.htm?")
tournament_ovga_team_ottawa2 = Tournament.create!(name:"Team Ottawa #2", tour:tour_to, course:course_Marshes, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "29-06-2019", end_time: "29-06-2019",reg_deadline: "", qual_required: false, comments: "", fee: 0.00, url: "")
tournament_ovga_team_ottawa3 = Tournament.create!(name:"Team Ottawa #3", tour:tour_to, course:course_Greensmere, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "6-07-2019", end_time: "06-07-2019",reg_deadline: "", qual_required: false, comments: "", fee: 0.00, url: "")
tournament_ovga_team_ottawa4 = Tournament.create!(name:"Team Ottawa #4", tour:tour_to, course:course_Pakenham, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "10-08-2019", end_time: "10-08-2019",reg_deadline: "", qual_required: false, comments: "", fee: 0.00, url: "")
tournament_ovga_team_ottawa5 = Tournament.create!(name:"Team Ottawa #5", tour:tour_to, course:course_Marshes, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "07-10-2019", end_time: "07-10-2019",reg_deadline: "", qual_required: false, comments: "", fee: 0.00, url: "")

tournament_gq_optimiste_classic_assante = Tournament.create!(name:"Optimiste Classic Assante", tour:tour_gq, course:course_Glendale, category: category_all, gender: gender_gb, level:level_provincial, days: 1, start_time: "15-06-2019", end_time: "16-06-2019",reg_deadline: "31-05-2019", qual_required: false , comments: "", fee: 143.72, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1995/index.htm")
tournament_qc_jun_prov_qual = Tournament.create!(name:"QC Junior Prov Qual", tour:tour_gq, course:course_Hawkesbury, category: category_Jun, gender: gender_gb, level:level_provincial, days:1, start_time: "8-7-2019", end_time: "8-7-2019",reg_deadline: "24-06-2019", qual_required: false , comments: "", fee: 63.64 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19117/index.htm")
tournament_ovga_Junior_CandD = Tournament.create!(name:"OVGA Junior City & District", tour:tour_ovga, course:course_Greensmere, category: category_all, gender: gender_gb, level:level_regional, days:2, start_time: "11-7-2019", end_time: "12-7-2019",reg_deadline: "1-7-2019", qual_required: false , comments: "", fee: 126.70, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19145/index.htm")
tournament_on_junior_girl = Tournament.create!(name:"ON Jr Girls (U19) Championship", tour:tour_go, course:course_Galt, category: category_Jun, gender: gender_g, level:level_provincial, days:4, start_time: "15-7-2019", end_time: "18-7-2019",reg_deadline: "21-06-2019", qual_required: true , comments: "", fee: 195.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1932/index.htm")
tournament_on_junior_boy = Tournament.create!(name:"ON Jr Boys (U19) Championship", tour:tour_go, course:course_TangleCreek, category: category_Jun, gender: gender_b, level:level_provincial, days:4, start_time: "16-7-2019", end_time: "19-7-2019",reg_deadline: "10-05-2019", qual_required: true , comments: "", fee: 195.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1930/index.htm")
tournament_ovga_intersectional = Tournament.create!(name:"OVGA Jr Internationals", tour:tour_ovga, course:course_various, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "21-7-2019", end_time: "21-7-2019",reg_deadline: "", qual_required: true, comments: "club dependant", fee: 0 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga18/event/rcga18352/index.htm")
tournament_qc_girls_prov = Tournament.create!(name:"QC Girls Prov Jr Championship", tour:tour_gq, course:course_montcalm, category: category_Juv, gender: gender_g, level:level_provincial, days:3, start_time: "14-7-2019", end_time: "16-7-2019",reg_deadline: "25-6-2019", qual_required: true , comments: "", fee: 166.71, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19129/index.htm")
tournament_qc_boyss_prov = Tournament.create!(name:"QC Boys Prov Jr Championship", tour:tour_gq, course:course_Rockland, category: category_Juv, gender: gender_b, level:level_provincial, days:5, start_time: "28-7-2019", end_time: "1-8-2019",reg_deadline: "25-6-2019", qual_required: true , comments: "", fee: 201.21, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19128/index.htm")
tournament_can_jun_girls = Tournament.create!(name:"Canadian Junior Girls", tour:tour_gc, course:course_Lethbridge, category: category_Jun, gender: gender_g, level:level_national, days:4, start_time: "30-07-2019", end_time: "2-08-2019",reg_deadline: "22-05-2019", qual_required: true , comments: "", fee: 300.00 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1919/index.htm")
tournament_qc_BPM_ProvChampio = Tournament.create!(name:"Bantam, Pee-Wee & Mosquito Prov Champ", tour:tour_gq, course:course_Drummondville, category: category_A_P_B, gender: gender_gb, level:level_provincial, days:2, start_time: "05-08-2019", end_time: "06-08-2019",reg_deadline: "", qual_required: true , comments: "", fee: 999.99 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19173/index.htm")
tournament_can_jun_boys = Tournament.create!(name:"Canadian Junior Boys", tour:tour_gc, course:course_CoveredBridge, category: category_Jun, gender: gender_b, level:level_national, days:4, start_time: "12-08-2019", end_time: "15-08-2019",reg_deadline: "--2019", qual_required: true , comments: "", fee: 999.99 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1918/index.htm?")
tournament_ovga_matchplay = Tournament.create!(name:"OVGA Match Play Championship", tour:tour_ovga, course:course_Pakenham, category: category_all, gender: gender_gb, level:level_regional, days:2, start_time: "24-07-2019", end_time: "25-07-2019",reg_deadline: "30-06-2019", qual_required: false , comments: "", fee: 74.75 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19177/index.htm")
tournament_on_jun_girl = Tournament.create!(name:"Ontario Junior (U19) Girls MP", tour:tour_go, course:course_Listowel, category: category_Jun, gender: gender_g, level:level_provincial, days:2, start_time: "7-8-2019", end_time: "8-8-2019",reg_deadline: "26-7-2019", qual_required: true, comments: "", fee: 155.00 , url: "https://www.bluegolf.com/amateur/events/gao19133/index.html")
tournament_on_jun_boy = Tournament.create!(name:"Ontario Junior (U19) Boys MP", tour:tour_go, course:course_Listowel, category: category_Jun, gender: gender_b, level:level_provincial, days:2, start_time: "7-8-2019", end_time: "8-8-2019",reg_deadline: "24-5-2019", qual_required: true, comments: "", fee: 175.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1934/index.htm")
tournament_on_ban_girl = Tournament.create!(name:"Ontario Bantam (U15) Girls Championship", tour:tour_go, course:course_DeerCreek, category: category_Bantam, gender: gender_g, level:level_provincial, days:2, start_time: "12-8-2019", end_time: "13-8-2019",reg_deadline: "26-7-2019", qual_required: true, comments: "", fee: 155.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao19137/index.htm")
tournament_on_ban_boy = Tournament.create!(name:"Ontario Bantam (U15) Boys Championship", tour:tour_go, course:course_DeerCreek, category: category_Bantam, gender: gender_g, level:level_provincial, days:2, start_time: "12-8-2019", end_time: "13-8-2019",reg_deadline: "21-6-2019", qual_required: true, comments: "", fee: 155.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1939/index.htm")
tournament_qc_jun_mp = Tournament.create!(name:"QC Junior Prov MP Championship", tour:tour_gq, course:course_Knowlton, category: category_Jun, gender: gender_gb, level:level_provincial, days:3, start_time: "19-08-2019", end_time: "21-08-2019",reg_deadline: "5-8-2019", qual_required: false , comments: "", fee: 115.00 , url: "https://www.bluegolf.com/amateur/events/rcga19185/index.html")
tournament_on_juv_girl = Tournament.create!(name:"ON Juv (U17) Girls Championship", tour:tour_go, course:course_GreenHills, category: category_Juv, gender: gender_g, level:level_provincial, days:3, start_time: "20-08-2019", end_time: "22-08-2019",reg_deadline: "14-7-2019", qual_required: true , comments: "", fee: 175.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao19138/index.htm")
tournament_on_juv_boy = Tournament.create!(name:"ON Juv (U17) Boys Championship", tour:tour_go, course:course_GreenHills, category: category_Juv, gender: gender_b, level:level_provincial, days:3, start_time: "20-08-2019", end_time: "22-08-2019",reg_deadline: "14-7-2019", qual_required: true , comments: "", fee: 175.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1937/index.htm")
tournament_qc_grahamcooke = Tournament.create!(name:"GC Graham Cooke Jr Invitational", tour:tour_gc, course:course_Bromont, category: category_B_Juv_Jun, gender: gender_gb, level:level_national, days:2, start_time: "24-8-2019", end_time: "25-8-2019",reg_deadline: "15-08-2019", qual_required: false, comments: "", fee: 175 , url: "https://www.bluegolf.com/amateur/events/rcga19189/index.html")
tournament_on_pw = Tournament.create!(name:"ON Pee-Wee (U13) Championship", tour:tour_go, course:course_Marlwood, category: category_PW, gender: gender_gb, level:level_provincial, days:2, start_time: "26-08-2019", end_time: "27-08-2019",reg_deadline: "9-8-2019", qual_required: true , comments: "", fee: 135.00 , url: "https://gao.bluegolf.com/bluegolf/gao19/event/gao1935/index.htm")
tournament_qc_interregional = Tournament.create!(name:"QC Interregional", tour:tour_gq, course:course_Stoneham, category: category_all, gender: gender_gb, level:level_provincial, days:2, start_time: "14-9-2019", end_time: "15-9-2019",reg_deadline: "", qual_required: true, comments: "", fee: 0 , url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga19201/index.htm")
tournament_fl_quebec_fall = Tournament.create!(name:"Future Links Fall Series Lachute", tour:tour_fl, course:course_Lachute, category: category_Jun, gender: gender_gb, level:level_national, days:3, start_time: "20-09-2019", end_time: "22-09-2019",reg_deadline: "21-08-2019", qual_required: true, comments: "", fee: 250.00, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1930/index.htm?")

tournament_LoyalistSC = Tournament.create!(name:"Loyalist Junior Showcase", tour:tour_other, course:course_Loyalist, category: category_all, gender: gender_gb, level:level_regional, days:2, start_time: "11-05-2019", end_time: "12-05-2019",reg_deadline: "5-5-2019", qual_required: false, comments: "email: proshop2@loyalistcc.com", fee: 80.0, url: "")
tournament_RideauView = Tournament.create!(name:"Rideau View", tour:tour_pjgt, course:course_RideauView, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "19-05-2019", end_time: "19-05-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Cornwall = Tournament.create!(name:"Cornwall", tour:tour_pjgt, course:course_Cornwall, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "26-05-2019", end_time: "26-05-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Carleton = Tournament.create!(name:"Carleton", tour:tour_pjgt, course:course_Carleton, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "28-06-2019", end_time: "28-06-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Prescott = Tournament.create!(name:"Prescott", tour:tour_pjgt, course:course_Prescott, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "5-7-2019", end_time: "5-7-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Brockville = Tournament.create!(name:"Brockville", tour:tour_pjgt, course:course_BrockvilleCC, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "9-7-2019", end_time: "9-7-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_CedarHills = Tournament.create!(name:"Cedarhill", tour:tour_pjgt, course:course_CedarHill, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "22-7-2019", end_time: "22-7-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_UpperCan = Tournament.create!(name:"Upper Canada", tour:tour_pjgt, course:course_UpperCanada, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "1-8-2019", end_time: "1-8-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_SmithsFalls = Tournament.create!(name:"Smiths Fall", tour:tour_pjgt, course:course_SmithsFalls, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "7-8-2019", end_time: "7-8-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Kanata = Tournament.create!(name:"Kanata", tour:tour_pjgt, course:course_kanata, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "12-8-2019", end_time: "12-8-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")
tournament_Equinelle = Tournament.create!(name:"eQuinelle", tour:tour_pjgt, course:course_Equinelle, category: category_all, gender: gender_gb, level:level_regional, days:1, start_time: "21-8-2019", end_time: "21-8-2019",reg_deadline: "", qual_required: false, comments: "", fee: 50.0 , url: "https://www.pjgtour.com/tournaments.html")



#tournament_ = Tournament.create!(name:"", tour:tour_, course:course_, category: category_, gender: gender_, level:level_, days:, start_time: "--2019", end_time: "--2019",reg_deadline: "--2019", qual_required: , comments: "", fee: , url: "")

competion_LoyalistShowCase = Competition.create!(tournament: tournament_LoyalistSC, status: status_reg, user: user_serge)
competion_LoyalistShowCase = Competition.create!(tournament: tournament_LoyalistSC, status: status_reg, user: user_ashley)

