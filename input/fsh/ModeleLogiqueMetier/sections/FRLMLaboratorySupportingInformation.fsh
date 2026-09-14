Logical: FRLMLaboratorySupportingInformation
Id: FRLMLaboratorySupportingInformation
Parent: FRLMSection
Title: "Logical model - FR LM Laboratory Supporting Information"
Description: """Section Informations Cliniques pour les examens de biologie médicale"""
Characteristics: #can-be-target

* subSection 0..0 
* titleSection 1..1 
* entry 1..*
  * observation 0..* FRLMObservation "Résultats cliniques et autres observations"
  * condition 0..* FRLMCondition "Problèmes"
  * medicationAdministration 0..* FRLMMedicationAdministration "Produits de santé administré avant l'examen de biologie"
  * sexForClinicalUse 0..1 CodeableConcept "Sexe Clinique"
  * vaccination 0..* FRLMImmunisation "Historique vaccinal du patient"
  * otherSupportingInformation 0..* Resource "Autres informations cliniques pertinentes"