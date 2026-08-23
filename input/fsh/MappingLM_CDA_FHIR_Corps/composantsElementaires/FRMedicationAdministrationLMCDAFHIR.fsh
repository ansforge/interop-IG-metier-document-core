Instance: FRMedicationAdministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2)."
* name = "FRMedicationAdministrationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\""
* status = #draft
* experimental = false

// Groupe 1 : modèle métier (FRLMMedicationAdministration) → CDA (FRCDATraitement)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement"

// Élément racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDATraitement"
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #SubstanceAdministration.consumable
* group[=].element[=].target.equivalence = #equivalent
// Date / durée du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #relatedto
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe : posologie détaillée (FRLMDosageInstructions) → CDA
// dosage.dosageDetails.* appartient à FRLMDosageInstructions ; ses sous-champs sont donc
// mappés dans un groupe dédié dont le source system est FRLMDosageInstructions.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement"

// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent
// sequence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.equivalence = #unmatched
// Instructions au patient
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuPatient
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

// Groupe 2 : modèle métier (FRLMMedicationAdministration) → FHIR (FRMedicationAdministrationDocument)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document"

// Élément racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #MedicationAdministration
* group[=].element[=].target.display = "FRMedicationAdministrationDocument"
* group[=].element[=].target.equivalence = #equivalent
// Médicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #MedicationAdministration.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Date / durée du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target[+].code = #MedicationAdministration.effective[x]
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #MedicationAdministration.extension:occurenceR5
* group[=].element[=].target[=].equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #MedicationAdministration.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #MedicationAdministration.reasonCode
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #MedicationAdministration.dosage
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #MedicationAdministration.note
* group[=].element[=].target.equivalence = #equivalent

// Groupe  : posologie détaillée (FRLMDosageInstructions) → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document"

// Posologie textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationAdministration.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationAdministration.dosage.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationAdministration.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationAdministration.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationAdministration.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Sequence de dosage
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationAdministration.dosage.extension:sequence
* group[=].element[=].target.equivalence = #equivalent
