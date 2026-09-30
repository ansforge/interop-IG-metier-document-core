Logical: FRLMHospitalDischargeMedications
Id: FRLMHospitalDischargeMedications
Parent: FRLMSection
Title: "Logical model - FR LM Hospital Discharge Medications"
Description: """Section Traitements à la sortie"""
Characteristics: #can-be-target

* subSection 0..0
* entry 1..*
  * hospitalDischargeMedications 1..* FRLMMedicationAdministration "Traitement à la sortie"