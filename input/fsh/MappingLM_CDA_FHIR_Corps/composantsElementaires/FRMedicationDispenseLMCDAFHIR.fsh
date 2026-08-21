Instance: FRMedicationDispenseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationDispense → FRCDATraitementDispense / FRLMMedicationDispense → FRMedicationDispenseDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationDispense vers le profil CDA FRCDATraitementDispense (Groupe 1), et vers le profil FHIR FRMedicationDispenseDocument (Groupe 2)."
* title = "Mapping Métier/CDA/FHIR : \"Traitement dispensé\""
* name = "FRMedicationDispenseLMCDAFHIR"
* status = #draft
* experimental = false

// Groupe 1 : modèle métier (FRLMMedicationDispense) → CDA (FRCDATraitementDispense)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-dispense"

// Élément racine
* group[=].element[+].code = #FRLMMedicationDispense
* group[=].element[=].target.code = #Supply
* group[=].element[=].target.display = "FRCDATraitementDispense"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant (hérité du header FRLMEntry)
* group[=].element[+].code = #FRLMMedicationDispense.header.identifier
* group[=].element[=].target.code = #Supply.id
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.author[x]
* group[=].element[=].target.equivalence = #unmatched
// Statut de la ligne de dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.status
* group[=].element[=].target.code = #Supply.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Supply.code (Complétude de la dispensation, lié à jdv-completude-dispensation-cisis) porte cette information, pas Supply.statusCode (statut technique de l'entrée CDA)."
// Destinataire de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.receiver[x]
* group[=].element[=].target.equivalence = #unmatched
// Référence de la prescription
* group[=].element[+].code = #FRLMMedicationDispense.relatedRequest
* group[=].element[=].target.code = #Supply.entryRelationship:frReferenceItemPrescription
* group[=].element[=].target.equivalence = #equivalent
// Médicament délivré
* group[=].element[+].code = #FRLMMedicationDispense.medicament
* group[=].element[=].target.code = #Supply.product
* group[=].element[=].target.equivalence = #equivalent
// Quantité de produit
* group[=].element[+].code = #FRLMMedicationDispense.dispensedQuantity
* group[=].element[=].target.code = #Supply.quantity
* group[=].element[=].target.equivalence = #equivalent
// Date et heure de dispense
* group[=].element[+].code = #FRLMMedicationDispense.timeOfDispensation
* group[=].element[=].target.equivalence = #unmatched
// Autorisation de substitution
* group[=].element[+].code = #FRLMMedicationDispense.substitutionOccurred
* group[=].element[=].target.code = #Supply.entryRelationship:frActeSubstitution
* group[=].element[=].target.equivalence = #equivalent
// Posologie (référence vers l'entrée CDA FR-Traitement imbriquée)
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent
// Notes du dispensateur
* group[=].element[+].code = #FRLMMedicationDispense.note
* group[=].element[=].target.code = #Supply.entryRelationship:frNotesDuDispensateur
* group[=].element[=].target.equivalence = #equivalent

// Groupe 2 : modèle métier (FRLMMedicationDispense) → FHIR (FRMedicationDispenseDocument)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-dispense-document"

// Élément racine
* group[=].element[+].code = #FRLMMedicationDispense
* group[=].element[=].target.code = #MedicationDispense
* group[=].element[=].target.display = "FRMedicationDispenseDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMMedicationDispense.header.identifier
* group[=].element[=].target.code = #MedicationDispense.identifier
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.author[x]
* group[=].element[=].target.code = #MedicationDispense.performer.actor
* group[=].element[=].target.equivalence = #equivalent
// Statut de la ligne de dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.status
* group[=].element[=].target.code = #MedicationDispense.status
* group[=].element[=].target.equivalence = #equivalent
// Destinataire de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.receiver[x]
* group[=].element[=].target.code = #MedicationDispense.receiver
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMMedicationDispense.relatedRequest
* group[=].element[=].target.code = #MedicationDispense.authorizingPrescription
* group[=].element[=].target.equivalence = #equivalent
// Médicament délivré
* group[=].element[+].code = #FRLMMedicationDispense.medicament
* group[=].element[=].target.code = #MedicationDispense.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Quantité de produit
* group[=].element[+].code = #FRLMMedicationDispense.dispensedQuantity
* group[=].element[=].target.code = #MedicationDispense.quantity
* group[=].element[=].target.equivalence = #equivalent
// Date et heure de dispense
* group[=].element[+].code = #FRLMMedicationDispense.timeOfDispensation
* group[=].element[=].target.code = #MedicationDispense.whenHandedOver
* group[=].element[=].target.equivalence = #equivalent
// Autorisation de substitution
* group[=].element[+].code = #FRLMMedicationDispense.substitutionOccurred
* group[=].element[=].target.code = #MedicationDispense.substitution.wasSubstituted
* group[=].element[=].target.equivalence = #equivalent

// Posologie
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction
* group[=].element[=].target.equivalence = #equivalent

// Notes du dispensateur
* group[=].element[+].code = #FRLMMedicationDispense.note
* group[=].element[=].target.code = #MedicationDispense.note
* group[=].element[=].target.equivalence = #equivalent

// Groupe 3 : posologie détaillée (FRLMDosageInstructions) → CDA
// dosageInstructions.dosageDetails.* appartient à FRLMDosageInstructions,
// Côté CDA, la posologie référencée par
// Supply.entryRelationship:frTraitement pointe vers un profil CDA SÉPARÉ
// (FRCDATraitement, canonical fr-cda-traitement)
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

// Groupe 4 : posologie détaillée (FRLMDosageInstructions) → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-dispense-document"

// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Ce profil n'expose pas timing.repeat.* : le regroupement fréquence est porté globalement par timing."
// Nombre de prises par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.frequency n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Période associée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.period n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Jour de la semaine
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.dayOfWeek n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Heure de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.timeOfDay n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.additionalInstruction
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.event n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Condition de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.asNeeded[x]
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.bounds[x] n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.duration* n'est pas exposé séparément dans ce profil ; porté globalement par timing."
// Durée de l'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationValue
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "timing.repeat.duration n'est pas exposé dans ce profil."
// Unité de la durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationUnit
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "timing.repeat.durationUnit n'est pas exposé dans ce profil."
// Durée maximale de l'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationMax
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "timing.repeat.durationMax n'est pas exposé dans ce profil."
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing.repeat.when/offset ne sont pas exposés séparément dans ce profil ; porté globalement par timing."
// Code ou texte du moment de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime.eventTimeCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "timing.repeat.when n'est pas exposé dans ce profil."
// Décalage en minutes avant/après l'élément déclenchant
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime.offset
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "timing.repeat.offset n'est pas exposé dans ce profil."
// Événement de fin de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerPeriod
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "maxDosePerPeriod.numerator n'est pas exposé séparément dans ce profil ; porté globalement par maxDosePerPeriod (Ratio)."
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerPeriod
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "maxDosePerPeriod.denominator n'est pas exposé séparément dans ce profil ; porté globalement par maxDosePerPeriod (Ratio)."
// Dose maximale par administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
