Instance: FRMedicationRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPrescriptionItem → FRCDATraitementPrescrit / FRLMPrescriptionItem → FRMedicationRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMPrescriptionItem vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument."
* title = "Mapping Métier/CDA/FHIR : Traitement prescrit"
* name = "FRMedicationRequestLMCDAFHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-prescrit"

// Élément racine
* group[=].element[+].code = #FRLMPrescriptionItem
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDATraitementPrescrit"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMPrescriptionItem.header.identifier
* group[=].element[=].target.code = #SubstanceAdministration.id
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMPrescriptionItem.header.status
* group[=].element[=].target.code = #SubstanceAdministration.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Auteur / prescripteur
* group[=].element[+].code = #FRLMPrescriptionItem.header.author[x]
* group[=].element[=].target.code = #SubstanceAdministration.author
* group[=].element[=].target.equivalence = #equivalent

// Motif du statut
* group[=].element[+].code = #FRLMPrescriptionItem.statusReason[x]
* group[=].element[=].target.equivalence = #unmatched

// Produit de santé
* group[=].element[+].code = #FRLMPrescriptionItem.medication
* group[=].element[=].target.code = #SubstanceAdministration.consumable
* group[=].element[=].target.equivalence = #equivalent

// Motif du traitement
* group[=].element[+].code = #FRLMPrescriptionItem.indication[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frReferenceInterne
* group[=].element[=].target.equivalence = #equivalent

// Objet de la prescription
* group[=].element[+].code = #FRLMPrescriptionItem.intendedUseType
* group[=].element[=].target.equivalence = #unmatched

// Durée du traitement
* group[=].element[+].code = #FRLMPrescriptionItem.periodOfUse
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime:effectiveTimeDuree
* group[=].element[=].target.equivalence = #equivalent

// Quantité de produit
* group[=].element[+].code = #FRLMPrescriptionItem.quantityPrescribed
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frQuantiteDeProduit
* group[=].element[=].target.equivalence = #equivalent
// Période de validité de la ligne de prescription
* group[=].element[+].code = #FRLMPrescriptionItem.validityPeriod
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frPeriodeDeRenouvellement
* group[=].element[=].target.equivalence = #equivalent

// Autorisation de substitution
* group[=].element[+].code = #FRLMPrescriptionItem.substitution.allowed[x]
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frAutorisationSubstitution
* group[=].element[=].target.equivalence = #equivalent

// Motif de non substitution : nouvel élément
* group[=].element[+].code = #FRLMPrescriptionItem.substitution.reason[x]
* group[=].element[=].target.equivalence = #unmatched

// Nombre de renouvellements
* group[=].element[+].code = #FRLMPrescriptionItem.numberOfRepeats
* group[=].element[=].target.code = #SubstanceAdministration.repeatNumber
* group[=].element[=].target.equivalence = #equivalent

// Intervalle minimal de délivrance : nouvel élément
* group[=].element[+].code = #FRLMPrescriptionItem.minimumDispenseInterval
* group[=].element[=].target.equivalence = #unmatched

// Hors AMM
* group[=].element[+].code = #FRLMPrescriptionItem.offLabel.isOffLabelUse
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frHorsAMM
* group[=].element[=].target.equivalence = #equivalent

// Raison hors AMM : nouvel élément
* group[=].element[+].code = #FRLMPrescriptionItem.offLabel.reason[x]
* group[=].element[=].target.equivalence = #unmatched

// Instructions dispensateur
* group[=].element[+].code = #FRLMPrescriptionItem.note
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frInstructionsAuDispensateur
* group[=].element[=].target.equivalence = #equivalent

// En rapport avec ALD / accident du travail / prévention / non remboursable
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecALD
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecAccidentTravail
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecPrevention
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frEnRapportAvecLaPrevention
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPrescriptionItem.nonRemboursable
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frNonRemboursable
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document"

// Élément racine
* group[=].element[+].code = #FRLMPrescriptionItem
* group[=].element[=].target.code = #MedicationRequest
* group[=].element[=].target.display = "FRMedicationRequestDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMPrescriptionItem.header.identifier
* group[=].element[=].target.code = #MedicationRequest.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMPrescriptionItem.header.status
* group[=].element[=].target.code = #MedicationRequest.status
* group[=].element[=].target.equivalence = #equivalent
// Auteur / prescripteur
* group[=].element[+].code = #FRLMPrescriptionItem.header.author[x]
* group[=].element[=].target.code = #MedicationRequest.requester
* group[=].element[=].target.equivalence = #equivalent
// Motif du statut : nouvel élément
* group[=].element[+].code = #FRLMPrescriptionItem.statusReason[x]
* group[=].element[=].target.code = #MedicationRequest.statusReason
* group[=].element[=].target.equivalence = #equivalent
// Produit de santé
* group[=].element[+].code = #FRLMPrescriptionItem.medication
* group[=].element[=].target.code = #MedicationRequest.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMPrescriptionItem.indication[x]
* group[=].element[=].target.code = #MedicationRequest.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Objet de la prescription
* group[=].element[+].code = #FRLMPrescriptionItem.intendedUseType
* group[=].element[=].target.code = #MedicationRequest.category
* group[=].element[=].target.equivalence = #unmatched
// Durée du traitement
// extension effectiveDosePeriod à créer ou mapper vers : FRMedicationRequestDocument.dosageInstruction.timing.repeat.boundsPeriod
* group[=].element[+].code = #FRLMPrescriptionItem.periodOfUse
* group[=].element[=].target.equivalence = #unmatched
// ============================================================
// Posologie : FRLMPrescriptionItem.dosageInstructions (type FRLMDosageInstructions)
// → FRMedicationRequestDocument.dosageInstruction (type Dosage)
// ============================================================

// Posologie
* group[=].element[+].code = #FRLMPrescriptionItem.dosageInstructions
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction
* group[=].element[=].target.equivalence = #equivalent

// Quantité de produit
* group[=].element[+].code = #FRLMPrescriptionItem.quantityPrescribed
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.quantity
* group[=].element[=].target.equivalence = #equivalent
// Période de validité de la ligne de prescription
* group[=].element[+].code = #FRLMPrescriptionItem.validityPeriod
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.validityPeriod
* group[=].element[=].target.equivalence = #equivalent
// Autorisation de substitution
* group[=].element[+].code = #FRLMPrescriptionItem.substitution.allowed[x]
* group[=].element[=].target.code = #MedicationRequest.substitution.allowed[x]
* group[=].element[=].target.equivalence = #equivalent
// Motif de non substitution
* group[=].element[+].code = #FRLMPrescriptionItem.substitution.reason[x]
* group[=].element[=].target.code = #MedicationRequest.substitution.reason
* group[=].element[=].target.equivalence = #equivalent
// Nombre de renouvellements
* group[=].element[+].code = #FRLMPrescriptionItem.numberOfRepeats
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.numberOfRepeatsAllowed
* group[=].element[=].target.equivalence = #equivalent
// Intervalle minimal de délivrance
* group[=].element[+].code = #FRLMPrescriptionItem.minimumDispenseInterval
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.dispenseInterval
* group[=].element[=].target.equivalence = #equivalent
// Hors AMM
* group[=].element[+].code = #FRLMPrescriptionItem.offLabel.isOffLabelUse
* group[=].element[=].target.code = #MedicationRequest.extension:horsAMM
* group[=].element[=].target.equivalence = #equivalent
// Raison hors AMM : nouvel élément
* group[=].element[+].code = #FRLMPrescriptionItem.offLabel.reason[x]
* group[=].element[=].target.equivalence = #unmatched
// Instructions dispensateur
* group[=].element[+].code = #FRLMPrescriptionItem.note
* group[=].element[=].target.code = #MedicationRequest.dispenseRequest.extension:dispenserInstructionR5
* group[=].element[=].target.equivalence = #equivalent
// En rapport avec ALD / accident du travail / prévention / non remboursable
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecALD
* group[=].element[=].target.code = #MedicationRequest.reasonReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecAccidentTravail
* group[=].element[=].target.code = #MedicationRequest.reasonReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
* group[=].element[+].code = #FRLMPrescriptionItem.enRapportAvecPrevention
* group[=].element[=].target.code = #MedicationRequest.reasonReference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
* group[=].element[+].code = #FRLMPrescriptionItem.nonRemboursable
* group[=].element[=].target.code = #MedicationRequest.extension:notCovered
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : posologie détaillée (FRLMDosageInstructions) → CDA
// dosageDetails.* appartient à FRLMDosageInstructions (référencé par
// FRLMPrescriptionItem.dosageInstructions), pas directement à FRLMPrescriptionItem.
// Côté CDA, les éléments de posologie détaillée (doseQuantity, rateQuantity,
// effectiveTime de fréquence, routeCode, approachSiteCode, maxDoseQuantity,
// precondition) sont des éléments directs de SubstanceAdministration.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-prescrit"

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

// Groupe Mapping 4 : posologie détaillée (FRLMDosageInstructions) → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document"

// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
// Nombre de prises par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'unité (periodUnit) est portée par le code de la Quantity source."
// Jour de la semaine
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.timeOfDay
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.additionalInstruction
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.event
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.asNeeded[x]
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.bounds[x]
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
// Durée de l'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationValue
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.duration
* group[=].element[=].target.equivalence = #equivalent
// Unité de la durée d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationUnit
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.durationUnit
* group[=].element[=].target.equivalence = #equivalent
// Durée maximale de l'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.duration.durationMax
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.durationMax
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés eventTimeCode et offset."
// Code ou texte du moment de prise
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime.eventTimeCode
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.when
* group[=].element[=].target.equivalence = #equivalent
// Décalage en minutes avant/après l'élément déclenchant
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventTime.offset
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.timing.repeat.offset
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #MedicationRequest.dosageInstruction.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
