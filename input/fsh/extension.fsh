
Extension: FavoriteFood
Id: FavoriteFood
* ^url = "https://sil-th.org/fhir/StructureDefinition/FavoriteFood"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* value[x] from $hospital-a-food (extensible)