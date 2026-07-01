Logical: FRLMCourseOfEncounter
Id: fr-lm-course-of-encounter
Parent: FRLMSection
Title: "Logical model - FR LM Course of encounter"
Description: """Section Résultats d'événements"""
Characteristics: #can-be-target

* subSection 0..0
* entry
  * testResults 1..* FRLMObservation "Résultats"
  * patientTransfer 0..* FRLMPatientTransfer "Transfert du patient"
  * diagnosticSummary  0..* FRLMCondition "Problème"
  * procedures 0..* FRLMProcedure "Acte"
  * medicalDevicesAndImplants 0..* FRLMDeviceUse "Dispositif médical et implant"
  // à voir si on va suivre la meme logique que l'Europe et créer un profil spécifique MedicationUse
  * medications 0..* FRLMMedicationAdministration "Traitement administré pendant le séjour"
  * reactions 0..* Base "événement indésirable"
    * reactionDuringEncounter 0..1 string "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation"
    * reactionFollowingAdministrationBloodDerivatives 0..1 string "Description sous forme textuelle des réactions indésirables survenues après l'administration de dérivés sanguins"
  * notes 0..1 string "Note"