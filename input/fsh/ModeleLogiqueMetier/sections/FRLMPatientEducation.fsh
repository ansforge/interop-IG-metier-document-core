Logical: FRLMPatientEducation
Id: FRLMPatientEducation
Parent: FRLMSection
Title: "Logical model - FR LM Patient Education"
Description: """Section Education du patient"""
Characteristics: #can-be-target

* subSection 0..0 
* entry 
  * procedure  0..* FRLMProcedure "Acte"
  * observation  0..* FRLMObservation "Simple observation"
  * reference 0..* FRLMAttachment "Références externes"