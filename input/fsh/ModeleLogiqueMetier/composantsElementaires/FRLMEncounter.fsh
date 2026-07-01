Logical: FRLMEncounter
Id: fr-lm-encounter
Parent : FRLMEntry
Title: "Logical model - FR LM Encounter"
Description: """Rencontre"""
Characteristics: #can-be-target

* header.author[x]
  * ^short = "Responsable de la rencontre"
* header.participant[x] 0..0
* participant 0..* FRLMParticipant "Personne impliquée dans la rencontre"
* period 1..1 Period "Date de début et de fin de la rencontre."
* priority 0..1 CodeableConcept "Priorité de la rencontre (ex : urgence, etc.)."
* type 1..1 CodeableConcept "Type de la rencontre (hospitalisation, soins à domicile, etc.)."
* serviceProvider 0..1 FRLMOrganisation "Organisation (établissement) responsable de cette rencontre"
* referringProfessional 0..1 FRLMHealthProfessional "Professionnel de santé référent"
* basedOn[x] 0..* FRLMCarePlan or FRLMServiceRequest "Référence à la demande ayant initié cette rencontre"
* reason[x] 0..* CodeableConcept or FRLMCondition or FRLMProcedure or FRLMObservation or string "Motif(s) de l'admission, ex : problème, procédure ou constatation."
* admission 0..1 Base "Détails de l'admission"
  * admitter 0..1 FRLMHealthProfessional "Professionnel de santé ayant admis le patient"
  * admitSource 0..1 CodeableConcept "Modalité d'entrée d'un patient en ES (urgence, programmée, etc...)."
    * ^binding.description = "jdv-modalite-entree : Modalité d'entrée en établissement de santé"
    * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis"
* dischargeDiagnosis[x] 0..* CodeableConcept or FRLMCondition "Les diagnostics au moment de la sortie."
* dischargeDestination 0..1 Base "modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)"
  * type 0..1 CodeableConcept "Type de sortie"
    * ^binding.description = "JDV_ModaliteSortie_CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
  * location[x] 0..1 FRLMOrganisation or FRLMLocation "Le lieu ou l'organisation"
* serviceLocation 0..* Base "Liste des lieux où le patient était présent pendant cette rencontre."
  * period 0..1 Period "Période pendant laquelle le patient était présent au lieu"
  * organisationPart[x] 1..1 FRLMOrganisation or FRLMLocation "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre."
* subEncounter 0..* FRLMEncounter "référence aux rencontres considérées comme faisant partie de cette rencontre."
* note 0..1 string "Notes"