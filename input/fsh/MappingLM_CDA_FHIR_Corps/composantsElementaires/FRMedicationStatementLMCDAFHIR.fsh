Instance: FRMedicationStatementLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationUse → FRCDATraitement / FRLMMedicationUse → FRMedicationStatementDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationUse vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument."
* title = "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement"

// Élément racine
* group[=].element[+].code = #FRLMMedicationUse
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDATraitement"
* group[=].element[=].target.equivalence = #equivalent
// Statut de la déclaration (hérité de FRLMEntry.header)
* group[=].element[+].code = #FRLMMedicationUse.header.status
* group[=].element[=].target.code = #SubstanceAdministration.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMMedicationUse.header.author[x]
* group[=].element[=].target.code = #SubstanceAdministration.author
* group[=].element[=].target.equivalence = #equivalent
// Statut actuel de prise du médicament
* group[=].element[+].code = #FRLMMedicationUse.treatmentStatus
* group[=].element[=].target.equivalence = #unmatched
// Type de changement
* group[=].element[+].code = #FRLMMedicationUse.changeType
* group[=].element[=].target.equivalence = #unmatched
// Médicament
* group[=].element[+].code = #FRLMMedicationUse.medication
* group[=].element[=].target.code = #SubstanceAdministration.consumable
* group[=].element[=].target.equivalence = #equivalent
// Motif d'utilisation
* group[=].element[+].code = #FRLMMedicationUse.reason[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #SubstanceAdministration.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #SubstanceAdministration.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime.period
* group[=].element[=].target.equivalence = #equivalent
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.precondition
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #SubstanceAdministration.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Source de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Note complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : ML → FHIR 
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-ml-medication-use"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-statement-document"

// Élément racine
* group[=].element[+].code = #FRLMMedicationUse
* group[=].element[=].target.code = #MedicationStatement
* group[=].element[=].target.display = "FRMedicationStatementDocument"
* group[=].element[=].target.equivalence = #equivalent
// Statut de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.header.status
* group[=].element[=].target.code = #MedicationStatement.status
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.header.author[x]
* group[=].element[=].target.equivalence = #unmatched
// Statut actuel de prise du médicament
* group[=].element[+].code = #FRLMMedicationUse.treatmentStatus
* group[=].element[=].target.code = #MedicationStatement.extension:adherence-code
* group[=].element[=].target.equivalence = #equivalent
// Type de changement dans la synthèse médicamenteuse
// category ??
* group[=].element[+].code = #FRLMMedicationUse.changeType
* group[=].element[=].target.equivalence = #unmatched
// Médicament utilisé
* group[=].element[+].code = #FRLMMedicationUse.medication
* group[=].element[=].target.code = #MedicationStatement.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Motif d'utilisation du médicament
* group[=].element[+].code = #FRLMMedicationUse.reason[x]
* group[=].element[=].target.code = #MedicationStatement.reason[x]
* group[=].element[=].target.equivalence = #equivalent
// ============================================================
// Posologie : FRLMMedicationUse.dosageInstructions (type FRLMDosageInstructions)
// → FRMedicationStatementDocument.dosage (type Dosage)
// ============================================================

// Posologie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions
* group[=].element[=].target.code = #MedicationStatement.dosage
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationStatement.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationStatement.dosage.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #MedicationStatement.dosage.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'unité (periodUnit) est portée par le code de la Quantity source."
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.dayOfWeek
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.timeOfDay
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #MedicationStatement.dosage.additionalInstruction
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.event
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.asNeededCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.bounds[x]
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
// Durée de l'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationValue
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.duration
* group[=].element[=].target.equivalence = #equivalent
// Unité de la durée d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationUnit
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.durationUnit
* group[=].element[=].target.equivalence = #equivalent
// Durée maximale de l'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationMax
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.durationMax
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés eventTimeCode et offset."
// Code ou texte du moment de prise
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.eventTimeCode
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.when
* group[=].element[=].target.equivalence = #equivalent
// Décalage en minutes avant/après l'élément déclenchant
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.offset
* group[=].element[=].target.code = #MedicationStatement.dosage.timing.repeat.offset
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationStatement.dosage.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerPeriod.numerator
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerPeriod.denominator
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
// Période d'utilisation du médicament
* group[=].element[+].code = #FRLMMedicationUse.periodOfUse
* group[=].element[=].target.code = #MedicationStatement.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// Prescription / délivrance / administration à l'origine
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #MedicationStatement.derivedFrom[x]
* group[=].element[=].target.equivalence = #equivalent
// Information complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #MedicationStatement.note
* group[=].element[=].target.equivalence = #equivalent