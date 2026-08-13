Logical: FRLMMedicationUse
Id: fr-lm-medication-use
Parent: FRLMEntry
Title: "Logical model - FR LM Medication Use"
Description: """Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient."""

* header
  * status
    * ^short = "Statut de la déclaration d'utilisation du médicament (par exemple : enregistré)"
  * author[x]
    * ^short = "Auteur de la déclaration d'utilisation du médicament"
* treatmentStatus 0..1 CodeableConcept "Statut actuel de la prise du médicament (par exemple : en cours, suspendu, arrêté)"
* changeType 0..* CodeableConcept "Type de changement relatif à l'utilisation du médicament dans une synthèse médicamenteuse (par exemple : ajouté, supprimé, modifié). Pertinent au moment de la sortie d'hospitalisation ou lors d'une modification de la liste des médicaments actifs."
* medication 1..1 FRLMMedication "Décrit le produit médicamenteux."
* reason[x] 0..* CodeableConcept or string "Motif de l'utilisation du médicament."
* dosageInstructions 1..1 FRLMDosageInstructions "Détails sur la manière dont le médicament est ou a été pris, ou doit être pris."
* periodOfUse 0..1 Period "Période pendant laquelle le patient a pris, prend ou est susceptible de prendre le médicament."
* derivedFrom[x] 0..* FRLMPrescriptionItem or FRLMMedicationDispense or FRLMMedicationAdministration "Prescriptions, délivrances ou administrations à l'origine de cette déclaration d'utilisation du médicament."
* note 0..1 string "Informations complémentaires concernant la déclaration d'utilisation du médicament."