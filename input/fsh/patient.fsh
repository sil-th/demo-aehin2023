Profile: AeHINPatient
Parent: Patient
Id: AeHINPatient
* ^url = $SD_Patient
* ^status = #draft
* extension ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "url"
  * ^slicing.rules = #open
  * ^min = 0
* extension contains $FavoriteFood named favoriteFood 0..1
* identifier 1..
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "system"
  * ^slicing.rules = #open
* identifier contains
    citizenId 1..1 and
    mrn 1..1
* identifier[citizenId].system 1..
* identifier[citizenId].system = "http://thailand.com/citizenid" (exactly)
* identifier[mrn].system 1..
* identifier[mrn].system = "http://fhirhospital.com/mrn" (exactly)
* name 1..
  * obeys patient-1
* telecom ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "use"
  * ^slicing.rules = #open
* telecom contains
    mobile 0..* and
    email 0..*
* telecom[mobile]
  * system 1..
  * system = #phone (exactly)
  * use 1..
  * use = #mobile (exactly)
* telecom[email].system 1..
* telecom[email].system = #email (exactly)
* gender 1..

Invariant: patient-1
Description: "The patient's name must include at least a first name, a last name, or both."
Severity: #error
Expression: "family.exists() or given.exists()"



Instance: silth-patient-example
InstanceOf: Patient
Usage: #example
* meta.profile = $SD_Patient
* extension
  * url = $FavoriteFood 
  * valueCodeableConcept = $food#pizza "Pizza"
* identifier[0]
  * type = $v2-0203#MR "Medical Record Number"
    * text = "Medical Record Number"
  * system = "http://hospital.sil-th.org"
  * value = "66-5682"
* identifier[+]
  * type = $v2-0203#NI "National unique individual identifier"
    * text = "National Person Identifier"
  * system = "http://thailand.com/citizenid"
  * value = "7-5752-64638-20-1"
* identifier[+]
  * type = $v2-0203#PPN "Passport Number"
    * text = "Passport Number"
  * system = "http://hl7.org/fhir/sid/passport-THA"
  * value = "X30337475X"
* name
  * use = #official
  * prefix = "Mr."
* telecom
  * system = #phone
  * value = "0287483728"
  * use = #home
* gender = #male
* birthDate = "1970-05-08"
* address
  * line = "450 Sathon Ranch"
  * city = "Wattana"
  * state = "Bangkok"
  * postalCode = "10110"
  * country = "TH"
* maritalStatus = $v3-MaritalStatus#S "Never Married"
  * text = "Never Married"
* multipleBirthBoolean = false
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
  * text = "English (United States)"