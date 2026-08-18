Logical: FRLMAdverseDrugReaction
Id: FRLMAdverseDrugReaction
Parent: FRLMEntry
Title: "Modèle logique métier - FR LM Adverse Drug Reaction"
Description: """Effet indésirable médicamenteux"""
Characteristics: #can-be-target

* adverseDrugReactionType 1..1 CodeableConcept "Type d'effet indésirable"
  * ^binding.strength = #required
  * ^binding.description = "Type d'effet indésirable provenant du jdv-origine-effet-indesirable-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis"
* detected 0..1 dateTime "Date de détection de l'effet indésirable"
* value 1..1 CodeableConcept "Valeur de l'observation"
* medicationAdministration 1..1 FRLMMedicationAdministration "Médicament, substance incriminée, posologie"
* reaction 0..* FRLMCondition "Réaction observée"
* causalityAssessment 0..1 CodeableConcept "Imputabilité"
  * ^binding.strength = #required
  * ^binding.description = "Niveau d'imputabilité provenant du jdv-imputabilite-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis"
* severity 1..1 CodeableConcept "Gravité"
  * ^binding.strength = #required
  * ^binding.description = "Gravité provenant du jdv-gravite-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis"
* outcome 0..1 CodeableConcept "Évolution de l'effet indésirable"
  * ^binding.strength = #required
  * ^binding.description = "Évolution de l'effet indésirable provenant du jdv-evolution-cisis"
  * ^binding.valueSet = "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis"
