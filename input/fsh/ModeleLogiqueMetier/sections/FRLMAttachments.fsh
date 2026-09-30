Logical: FRLMAttachments 
Id: FRLMAttachments
Parent: FRLMSection
Title: "Logical model - FR LM Attachments"
Description: """Section Documents ajoutés"""
Characteristics: #can-be-target

* subSection 0..0 
* entry
  * observation 0..1 FRLMObservation "Permet d'indiquer la nature des documents ajoutés"
  * attachment 1..* FRLMAttachment "Document attaché"