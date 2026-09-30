Logical: FRLMPatientEducation
Id: FRLMPatientEducation
Parent: FRLMSection
Title: "Logical model - FR LM Patient Education"
Description: """Section Education du patient"""
Characteristics: #can-be-target

* subSection 0..0 
* entry 
  * procedure  0..* FRLMProcedure "Acte"
  * observation  0..* FRLMObservation "Observation"
  * reference 0..* FRLMAttachment "Référence externe"