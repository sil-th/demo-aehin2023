CodeSystem: Patientsfavoritefood
Id: Patientsfavoritefood
Title: "Patient's favorite food"
* ^url = $food
* ^status = #draft
* ^contact.telecom.system = #email
* ^caseSensitive = false
* ^compositional = false
* ^content = #complete
* ^count = 5
* #pizza "Pizza" "Definition of Pizza"
* #salad "Salad" "Definition of Salad"
* #soup "Soup" "Definition of Soup"
* #burger "Hamburger" "Definition of Hamburger"
* #cake "Cake" "Definition of Cake"

ValueSet: HospitalAPatientFavoriteFood
Id: HospitalAPatientFavoriteFood
Title: "Hospital A Patient Favorite Food"
* ^url = $hospital-a-food
* ^status = #draft
* ^contact.telecom.system = #email
* $food#pizza "Pizza"
* $food#salad "Salad"