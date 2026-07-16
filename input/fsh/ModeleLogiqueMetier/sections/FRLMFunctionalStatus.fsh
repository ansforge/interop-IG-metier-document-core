Logical: FRLMFunctionalStatus
Id: fr-lm-functional-status
Parent: FRLMSection
Title: "logical model- FR LM Functional Status"
Description: """Section Statut fonctionnel"""
Characteristics: #can-be-target

* subSection 0..0
* titleSection 1..1 
* entry
  * assessment 0..* FRLMObservationAssessment "résultat d'une évaluation du statut fonctionnel"