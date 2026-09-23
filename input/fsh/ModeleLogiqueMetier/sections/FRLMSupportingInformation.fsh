Logical: FRLMSupportingInformation
Id: FRLMSupportingInformation
Parent: FRLMSection
Title: "Logical model - FR LM Supporting Information"
Description: """Section Informations Cliniques"""
Characteristics: #can-be-target

* subSection 0..0
* titleSection 1..1
* entry 1..*
  * observation 0..* FRLMObservation "Observation (résultat d'examen antérieur, antécédent médical ou chirurgical, contre-indication et autre observation)"
  * condition 0..* FRLMCondition "Problème (antécédent médical, problème de santé, etc.)"
  * device 0..* FRLMDeviceUse "Dispositif médical"
  * pregnancyStatus 0..1 FRLMPregnancyObservation "Statut grossesse"
  * medicationAdministration[x] 0..* FRLMDICOMMedicationAdministration or FRLMMedicationAdministration "Produits de santé administré avant l'examen de biologie ou d'imagerie"
  * sexForClinicalUse 0..1 CodeableConcept "Sexe Clinique"
  * vaccination 0..* FRLMImmunisation "Historique vaccinal du patient"
  * otherSupportingInformation 0..* Resource "Autres informations cliniques pertinentes"