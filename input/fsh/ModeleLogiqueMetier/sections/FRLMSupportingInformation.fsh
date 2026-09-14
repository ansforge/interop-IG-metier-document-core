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
  * historyOfPastIllness 1..1 FRLMObservation "Observation"
  * historyOfPastProcedures 1..1 FRLMObservation "Observation"
  * contraIndication 0..1 FRLMObservation "Observation"
  * condition 0..* FRLMCondition "Problème"
  * device 0..* FRLMDeviceUse "Dispositif médical"
  * pregnancyStatus 0..1 FRLMPregnancyObservation "Statut grossesse"
  * priorMedicationAdministration[x] 0..* FRLMDICOMMedicationAdministration or FRLMMedicationAdministration "Produits de santé administré avant l'examen d'imagerie / avant l'examen de biologie"
  * sexForClinicalUse 0..1 CodeableConcept "Sexe Clinique"
  * vaccination 0..* FRLMImmunisation "Historique vaccinal du patient"
  * otherSupportingInformation 0..* Reference  "Autres informations cliniques pertinentes"