Logical: FRLMPatientTransfer
Id: fr-lm-patient-transfer
Parent: FRLMEntry
Title: "Logical model - FR LM Patient Transfer."
Description: """Transfert du patient"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code du transfert"
* header.date ^short = "Date du transfert"
* header.participant[x].participantOrganisation ^short = "Destination"