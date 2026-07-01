// l'équivalent de ce modèle EHDSMedia a été supprimé !
// https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedia.html
Logical: FRLMObservationMedia
Id: fr-lm-observation-media
Parent : FRLMEntry
Title: "Logical model - FR LM ObservationMedia"
Description: """Image illustrative."""
Characteristics: #can-be-target

* content 1..1 FRLMAttachment "Image encodée en Base64"
* content.data 1..1
* content.contentType 1..1 

* subject[x] 1..1 Reference(FRLMPatient or FRLMSpecimen) "Patient ou spécimen concerné par l’image"
* note 0..*	string "Précondition"