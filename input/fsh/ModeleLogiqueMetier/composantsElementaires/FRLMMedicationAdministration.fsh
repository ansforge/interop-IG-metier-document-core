Logical: FRLMMedicationAdministration
Id: fr-lm-medication-administration	
Parent: FRLMEntry	
Title: "Logical model- FR LM Medication Administration	"
Description: """Traitement"""
Characteristics: #can-be-target

* medication 1..1 FRLMMedication "Médicament"
* occurrence[x] 1..1 dateTime or Period "date/ durée du traitement"
* reason[x] 0..* CodeableConcept or FRLMCondition or FRLMObservation "Motif du traitement"
* dosage 0..1 FRLMDosageInstructions "Posologie"
* note 0..1 string "Note"

