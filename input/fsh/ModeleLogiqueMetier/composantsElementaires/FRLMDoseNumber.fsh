Logical: FRLMDoseNumber
Id: fr-lm-dose-number
Title: "Logical model - FR LM Dose Number"
Description: """Rang de la vaccination"""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifiant de la dose de vaccin"
* status 1..1 code "Statut de la dose de vaccin" 
* date 0..1 dateTime "Date de la dose de vaccin" 
* priority 0..1 CodeableConcept "Priorité" 
* renewal 0..1 Range "Nombre de renouvellements possibles" 
* language 0..1 code "Language"
* doseNumber 1..1 integer "Rang de la vaccination"

