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
Event.delete_all

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
category_NA28 = Category.create!(name: "NA")
category_NA29 = Category.create!(name: "NA")
category_NA30 = Category.create!(name: "NA")
category_all = Category.create!(name: "All")



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
#course_ = Course.create!(name: "", address: "", city: "", province: province_ , country: country_Canada, zip: "", url: "" )


tour_pjgt = Tour.create!(acronym: "PJGT", name: "Play Junior Golf Tour", country: country_Canada, url: "https://juniorgolf.herokuapp.com/")
tour_ovga = Tour.create!(acronym: "OVGA", name: "Ottawa Valley Golf Association", country: country_Canada, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/schedule/ovgacrj/index.htm")
tour_gq = Tour.create!(acronym: "GC", name: "Golf Quebec", country: country_Canada, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/schedule/gqjr/index.htm")
tour_go = Tour.create!(acronym: "GO",name: "Golf Ontario", country: country_Canada, url: "https://gao.ca/new-ontario-junior-rankings/regional-junior-tours-new/")
tour_gc = Tour.create!(acronym: "GC",name: "Golf Canada", country: country_Canada, url: "https://golfcanada.ca/")
tour_cjga = Tour.create!(acronym: "CJGA",name: "Canadian Junior Golf Association ", country: country_Canada, url: "https://cjga.com/")
tour_fl = Tour.create!(acronym: "FL",name: "Future Links", country: country_Canada, url: "https://bit.ly/2OCnevd")
tour_other = Tour.create!(acronym: "Other",name: "Other", country: country_Canada, url: " ")





event_qcjunioropen = Event.create!(name:"Quebec Junior Open", tour:tour_cjga, course:course_Hawkesbury, category: category_all, gender: gender_gb, level:level_provincial, days:2, start_date: "05-04-2019", reg_deadline: "04-04-2019", qual_required: 'yes', comments: "", fee: 175.00, url: "https://golfcanada.bluegolf.com/bluegolf/rcga19/event/rcga1962/index.htm")



