Logical: FRLMSOPInstance
Id: FRLMSOPInstance
Parent: FRLMEntry
Title: "Logical model - FR LM SOP Instance"
Description: """SOP Instance"""
Characteristics: #can-be-target

* header.identifier 1..* 
  * ^short = "UUID SOP instance"
* sopClass 1..1 CodeableConcept "Classe SOP"
  * ^binding.strength = #required
  * ^binding.description = "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis"
* instanceNumber 0..1 integer "Numéro de l'instance dans la série"
* numberOfFrames 0..1 integer "Nombre de cadres composant l'instance"
