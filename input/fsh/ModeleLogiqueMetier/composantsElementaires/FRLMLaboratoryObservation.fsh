Logical: FRLMLaboratoryObservation
Id: fr-lm-laboratory-observation
Parent: FRLMObservation
Title: "Logical model - Laboratory Observation"
Description: """Résultats d'examen de biologie médicale"""
Characteristics: #can-be-target

* result ^short = "Résultats d'examen"
* triggeredBy[x] 0..* FRLMLaboratoryObservation or FRLMObservation "Référence à l'observation ayant déclenché la réalisation de cette observation."
* testKit 0..1 FRLMDevice "Test Kit utilisé pour la réalisation de l'observation."
* calibrator 0..1 Identifier "Identifiant du calibrateur utilisé pour la réalisation de l'observation."
* accreditationStatus 0..1 boolean "Statut d'accréditation du laboratoire pour l'observation."
* previousResults 0..* FRLMLaboratoryObservation "Résultats précédents de la même observation"
* pointOfCareTest 0..1 boolean "Indique si l'observation est un test de point de soins ou non."