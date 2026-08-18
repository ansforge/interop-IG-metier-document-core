Logical: FRLMSectionTravelHistory
Id: FRLMSectionTravelHistory
Parent: FRLMSection
Title: "Logical model  - FR LM Travel History"
Description: """Section Historique des voyages"""
Characteristics: #can-be-target

* titleSection 1..1 
* subSection 0..0
* entry
  * travelHistory 0..* FRLMTravelHistory "Historique des voyages"
  * note 0..1 string "Commentaire"	