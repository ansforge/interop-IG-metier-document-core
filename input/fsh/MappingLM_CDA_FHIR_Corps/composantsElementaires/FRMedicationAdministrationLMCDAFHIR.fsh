Instance: FRMedicationAdministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2)."
* title = "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\""
* status = #draft

// Groupe 1 : modèle métier (FRLMMedicationAdministration) → CDA (FRCDATraitement)

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement"

// Élément racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #FRCDATraitement.consumable
* group[=].element[=].target.equivalence = #equivalent

// Date / durée du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
    ///// Target pour la forme "durée" (Period)
* group[=].element[=].target[+].code = #FRCDATraitement.effectiveTime[not(@operator='A')]
* group[=].element[=].target[=].equivalence = #equivalent
    //// Target pour la forme "instant" (dateTime)
* group[=].element[=].target[+].code = #FRCDATraitement.effectiveTime[@operator='A']
* group[=].element[=].target[=].equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frTraitement.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// // Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #FRCDATraitement.text
* group[=].element[=].target.equivalence = #equivalent
// sequence
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.sequence
* group[=].element[=].target.equivalence = #unmatched
// 'instructionsPatient'
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRCDATraitement.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRCDATraitement.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime.period
* group[=].element[=].target.equivalence = #equivalent
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.precondition
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #FRCDATraitement.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #FRCDATraitement.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe 2 : modèle métier (FRLMMedicationAdministration) → FHIR (FRMedicationAdministrationDocument)

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document"

// Élément racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// Date / durée du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
    ///// Target pour la forme "durée" (Period)
* group[=].element[=].target[+].code = #FRMedicationAdministrationDocument.effectivePeriod
* group[=].element[=].target[=].equivalence = #equivalent
    //// Target pour la forme "instant" (dateTime)
* group[=].element[=].target[+].code = #FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5
* group[=].element[=].target[=].equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.reasonCode
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage
* group[=].element[=].target.equivalence = #equivalent
// Posologie textuelle
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.renderedDosageInstruction
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Sequence de dosage
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.sequence
* group[=].element[=].target.code = #FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.note
* group[=].element[=].target.equivalence = #equivalent