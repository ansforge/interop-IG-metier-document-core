Logical: FRLMExposureInformation
Id: FRLMExposureInformation
Parent: FRLMSection
Title: "Logical model - FR LM Exposure Information"
Description: """Section Exposition aux radiations"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0 
* entry
  * quantityExposure 0..* FRLMQuantityExposure "Quantité"
  * radiopharmaceuticalAdministration 0..1 FRLMMedicationAdministration "Administration des produits radiopharmaceutiques"