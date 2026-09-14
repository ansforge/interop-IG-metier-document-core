Logical: FRLMSupportingInformation
Id: FRLMSupportingInformation
Parent: FRLMSection
Title: "Logical model - FR LM Supporting Information"
Description: """Section Informations Cliniques"""
Characteristics: #can-be-target

* subSection 0..0 
* titleSection 1..1 
* entry 1..*
  * previousResultsInformation 0..* FRLMObservation "Résultats d'examens antérieurs pertinents"
  * historyOfPastIllness[x] 0..* FRLMCondition or FRLMObservation "Antécédents médicaux"
  * historyOfPastProcedures 0..* FRLMObservation "Antécédents chirurgicaux"
  * contraIndication 0..* FRLMObservation "Contre-indications"
  * condition 0..* FRLMCondition "Problème"
  * device 0..* FRLMDeviceUse "Dispositif médical"
  * pregnancyStatus 0..1 FRLMPregnancyObservation "Statut grossesse"
  * priorMedicationAdministration 0..* FRLMDICOMMedicationAdministration "Produits de santé administré avant l'examen d'imagerie"
  * sexForClinicalUse 0..1 CodeableConcept "Sexe Clinique"