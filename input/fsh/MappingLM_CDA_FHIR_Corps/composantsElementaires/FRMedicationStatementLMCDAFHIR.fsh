Instance: FRMedicationStatementLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationUse → FRCDATraitement / FRLMMedicationUse → FRMedicationStatementDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationUse vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument."
* name = "FRMedicationStatementLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\""
* status = #draft
* experimental = false

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
// Posologie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #relatedto
// Source de la déclaration
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Note complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : posologie détaillée (FRLMDosageInstructions) → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement"

// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #SubstanceAdministration.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #SubstanceAdministration.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeFrequence
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeFrequence
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
// Période associée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeFrequence
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
// Jour de la semaine
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeFrequence
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
// Heure de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeFrequence
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Date précise de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'élément CDA dédié à une liste de dates précises de prise dans ce profil."
// Condition de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.precondition
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeDuree
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "effectiveTime:effectiveTimeDuree porte la durée de traitement globale (IVL-TS) ; le modèle métier permet en plus une durée ou un intervalle de durée non distingués séparément côté CDA."
// Durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'élément CDA dédié à une durée d'administration ponctuelle (ex. perfusion) dans ce profil."
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Pas d'élément CDA structuré pour un événement déclencheur ; porté par le texte libre des instructions au patient."
// Événement de fin de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #SubstanceAdministration.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity.numerator
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity.denominator
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'élément CDA distinct pour une dose maximale par administration ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #SubstanceAdministration.maxDoseQuantity
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'élément CDA distinct pour une dose maximale sur la durée de vie ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse"
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
* group[=].element[=].target.code = #MedicationStatement.note.extension:adherence
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
* group[=].element[=].target.code = #MedicationStatement.reasonCode
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "reason[x] est générique ; il peut aussi correspondre à reasonReference selon le contexte."
// ============================================================
// Posologie : FRLMMedicationUse.dosageInstructions (type FRLMDosageInstructions)
// → FRMedicationStatementDocument.dosage (type Dosage)
// ============================================================

// Posologie
* group[=].element[+].code = #FRLMMedicationUse.dosageInstructions
* group[=].element[=].target.code = #MedicationStatement.dosage
* group[=].element[=].target.equivalence = #equivalent
// Période d'utilisation du médicament
* group[=].element[+].code = #FRLMMedicationUse.periodOfUse
* group[=].element[=].target.code = #MedicationStatement.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Prescription / délivrance / administration à l'origine
* group[=].element[+].code = #FRLMMedicationUse.derivedFrom[x]
* group[=].element[=].target.code = #MedicationStatement.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
// Information complémentaire
* group[=].element[+].code = #FRLMMedicationUse.note
* group[=].element[=].target.code = #MedicationStatement.note
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : posologie détaillée (FRLMDosageInstructions) → FHIR
// fr-medication-statement-document est un profil plus simple que fr-medication-request-document :
// pas de timing.repeat.*, ni de maxDosePerPeriod.numerator/denominator détaillés.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-statement-document"

// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationStatement.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationStatement.dosage.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #MedicationStatement.dosage.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Période associée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Jour de la semaine
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Heure de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #MedicationStatement.dosage.additionalInstruction
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.event n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Condition de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.asNeeded[x]
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.bounds[x] n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
// Durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.duration/.durationUnit/.durationMax ne sont pas exposés dans ce profil ; l'information est portée globalement par timing."
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #MedicationStatement.dosage.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.when/.offset ne sont pas exposés dans ce profil ; l'information est portée globalement par timing."
// Événement de fin de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationStatement.dosage.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerPeriod
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "maxDosePerPeriod n'est pas décomposé en numerator/denominator dans ce profil."
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerPeriod
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "maxDosePerPeriod n'est pas décomposé en numerator/denominator dans ce profil."
// Dose maximale par administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #MedicationStatement.dosage.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
