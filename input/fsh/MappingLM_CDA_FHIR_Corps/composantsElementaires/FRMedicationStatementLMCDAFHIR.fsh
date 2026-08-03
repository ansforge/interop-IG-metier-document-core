Instance: FRMedicationStatementLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationUse → FRCDATraitement / FRLMMedicationUse → FRMedicationStatementDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationUse vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument."
* title = "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-use"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement"

// Élément racine
* group[=].element[+].code = #FRLMMedicationUse
* group[=].element[=].target.code = #FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent
// Statut de la déclaration (hérité de FRLMEntry.header)
* group[=].element[+].code = #FRLMMedicationUse.header.status
* group[=].element[=].target.code = #FRCDATraitement.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMMedicationUse.header.author[x]
* group[=].element[=].target.code = #FRCDATraitement.author
* group[=].element[=].target.equivalence = #equivalent
// Statut actuel de prise du médicament
* group[=].element[+].code = #FRLMMedicationUse.treatmentStatus
* group[=].element[=].target.equivalence = #unmatched
// Type de changement
* group[=].element[+].code = #FRLMMedicationUse.changeType
* group[=].element[=].target.equivalence = #unmatched
// Médicament
* group[=].element[+].code = #FRLMMedicationUse.medication
* group[=].element[=].target.code = #FRCDATraitement.consumable
* group[=].element[=].target.equivalence = #equivalent
// Motif d'utilisation
* group[=].element[+].code = #FRLMMedicationUse.reason[x]
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #FRCDATraitement.text
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRCDATraitement.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRCDATraitement.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime.period
* group[=].element[=].target.equivalence = #equivalent
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.precondition
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #FRCDATraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #FRCDATraitement.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRCDATraitement.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #FRCDATraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Source de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #FRCDATraitement.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Note complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #FRCDATraitement.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : ML → FHIR 
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-medication-use"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-statement-document"

// Élément racine
* group[=].element[+].code = #FRLMMedicationUse
* group[=].element[=].target.code = #FRMedicationStatementDocument
* group[=].element[=].target.equivalence = #equivalent
// Statut de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.header.status
* group[=].element[=].target.code = #FRMedicationStatementDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.header.author[x]
* group[=].element[=].target.equivalence = #unmatched
// Statut actuel de prise du médicament
* group[=].element[+].code = #FRLMMedicationUse.treatmentStatus
* group[=].element[=].target.code = #FRMedicationStatementDocument.extension:adherence-code
* group[=].element[=].target.equivalence = #equivalent
// Type de changement dans la synthèse médicamenteuse
// category ??
* group[=].element[+].code = #FRLMMedicationUse.changeType
* group[=].element[=].target.equivalence = #unmatched
// Médicament utilisé
* group[=].element[+].code = #FRLMMedicationUse.medication
* group[=].element[=].target.code = #FRMedicationStatementDocument.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Motif d'utilisation du médicament
* group[=].element[+].code = #FRLMMedicationUse.reason[x]
* group[=].element[=].target.code = #FRMedicationStatementDocument.reason[x]
* group[=].element[=].target.equivalence = #equivalent
// Instructions de posologie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosage
* group[=].element[=].target.equivalence = #equivalent

// ============================================================
// Posologie : FRLMPrescriptionItem.dosageInstructions (type FRLMDosageInstructions)
// → FRMedicationRequestDocument.dosageInstruction (type Dosage)
// ============================================================

// Posologie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #related-to
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'unité (periodUnit) est portée par le code de la Quantity source."
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.dayOfWeek
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.timeOfDay
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.additionalInstruction
* group[=].element[=].target.equivalence = #related-to
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.event
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.asNeededCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.bounds[x]
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #related-to
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
// Durée de l'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationValue
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.duration
* group[=].element[=].target.equivalence = #equivalent
// Unité de la durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationUnit
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.durationUnit
* group[=].element[=].target.equivalence = #equivalent
// Durée maximale de l'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationMax
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.durationMax
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés eventTimeCode et offset."
// Code ou texte du moment de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.eventTimeCode
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.when
* group[=].element[=].target.equivalence = #equivalent
// Décalage en minutes avant/après l'élément déclenchant
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.offset
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.timing.repeat.offset
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.maxDosePerPeriod.numerator
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.maxDosePerPeriod.denominator
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #FRMedicationStatementDocument.dosageInstruction.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
// Période d'utilisation du médicament
* group[=].element[+].code = #FRLMMedicationUse.periodOfUse
* group[=].element[=].target.code = #FRMedicationStatementDocument.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// Prescription / délivrance / administration à l'origine
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #FRMedicationStatementDocument.derivedFrom[x]
* group[=].element[=].target.equivalence = #equivalent
// Information complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #FRMedicationStatementDocument.note
* group[=].element[=].target.equivalence = #equivalent