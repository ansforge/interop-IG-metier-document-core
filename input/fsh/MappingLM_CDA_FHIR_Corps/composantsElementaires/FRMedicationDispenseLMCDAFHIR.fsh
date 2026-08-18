Instance: FRMedicationDispenseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationDispense → FRCDATraitementDispense / FRLMMedicationDispense → FRMedicationDispenseDocument"
Description: "Mapping des éléments du modèle métier FRLMMedicationDispense vers le profil CDA FRCDATraitementDispense (Groupe 1), et vers le profil FHIR FRMedicationDispenseDocument (Groupe 2)."
* title = "Mapping Métier/CDA/FHIR : \"Traitement dispensé\""
* status = #draft

// Groupe 1 : modèle métier (FRLMMedicationDispense) → CDA (FRCDATraitementDispense)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-dispense"

// Élément racine
* group[=].element[+].code = #FRLMMedicationDispense
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement
* group[=].element[=].target.display = "FRCDATraitementDispense.entryRelationship:frTraitement"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant (hérité du header FRLMEntry)
* group[=].element[+].code = #FRLMMedicationDispense.header.identifier
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.id
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.author[x]
* group[=].element[=].target.equivalence = #unmatched
// Statut de la ligne de dispensation
* group[=].element[+].code = #FRLMMedicationDispense.header.status
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Destinataire de la dispensation
* group[=].element[+].code = #FRLMMedicationDispense.receiver[x]
* group[=].element[=].target.equivalence = #unmatched
// Référence de la prescription
* group[=].element[+].code = #FRLMMedicationDispense.relatedRequest
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frReferenceItemPrescription
* group[=].element[=].target.equivalence = #equivalent
// Médicament délivré
* group[=].element[+].code = #FRLMMedicationDispense.medicament
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.product:frProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Quantité de produit
* group[=].element[+].code = #FRLMMedicationDispense.dispensedQuantity
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.quantity
* group[=].element[=].target.equivalence = #equivalent
// Date et heure de dispense
* group[=].element[+].code = #FRLMMedicationDispense.timeOfDispensation
* group[=].element[=].target.equivalence = #unmatched
// Autorisation de substitution
* group[=].element[+].code = #FRLMMedicationDispense.substitutionOccurred
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frActeSubstitution
* group[=].element[=].target.equivalence = #equivalent
// Posologie (regroupe 'traitement' et 'instructionsPatient')
// 'traitement' 
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.text
* group[=].element[=].target.equivalence = #equivalent
// sequence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.sequence
* group[=].element[=].target.equivalence = #unmatched
// 'instructionsPatient'
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.rateQuantity
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.period
* group[=].element[=].target.equivalence = #equivalent
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.precondition
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.maxDoseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Notes du dispensateur
* group[=].element[+].code = #FRLMMedicationDispense.note
* group[=].element[=].target.code = #Supply.entryRelationship:frTraitement.entryRelationship:frNotesDuDispensateur
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

// ============================================================
// Posologie : FRLMPrescriptionItem.dosageInstructions (type FRLMDosageInstructions)
// → FRMedicationRequestDocument.dosageInstruction (type Dosage)
// ============================================================

// Posologie
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction
* group[=].element[=].target.equivalence = #equivalent
// Posologie sous forme textuelle
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.text
* group[=].element[=].target.equivalence = #equivalent
// Numéro de séquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.sequence
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.note
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.patientInstruction
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée par prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.doseAndRate.dose[x]
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.doseAndRate.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Fréquence de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
// Nombre de prises par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.frequency
* group[=].element[=].target.equivalence = #equivalent
// Période associée à la fréquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.period
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'unité (periodUnit) est portée par le code de la Quantity source."
// Jour de la semaine
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.dayOfWeek
* group[=].element[=].target.equivalence = #equivalent
// Heure de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.timeOfDay
* group[=].element[=].target.equivalence = #equivalent
// Instruction additionnelle liée à la fréquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.additionalInstruction
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
// Date précise de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.event
* group[=].element[=].target.equivalence = #equivalent
// Condition de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.asNeededCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Date / période / durée de la séquence de traitement
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.bounds[x]
* group[=].element[=].target.equivalence = #equivalent
// Durée d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.duration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
// Durée de l'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationValue
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.duration
* group[=].element[=].target.equivalence = #equivalent
// Unité de la durée d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationUnit
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.durationUnit
* group[=].element[=].target.equivalence = #equivalent
// Durée maximale de l'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationMax
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.durationMax
* group[=].element[=].target.equivalence = #equivalent
// Événement de prise (ex : avant repas)
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Regroupement porté par les éléments détaillés eventTimeCode et offset."
// Code ou texte du moment de prise
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.eventTimeCode
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.when
* group[=].element[=].target.equivalence = #equivalent
// Décalage en minutes avant/après l'élément déclenchant
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.offset
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.timing.repeat.offset
* group[=].element[=].target.equivalence = #equivalent
// Événement de fin de séquence
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.eventEndSequence
* group[=].element[=].target.equivalence = #unmatched
// Région anatomique d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.bodySite
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.site
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.route
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerPeriod.numerator
* group[=].element[=].target.equivalence = #equivalent
// Durée associée à la dose maximale par période
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerPeriod.denominator
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale par administration
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerAdministration
* group[=].element[=].target.equivalence = #equivalent
// Dose maximale sur la durée de vie
* group[=].element[+].code = #FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose
* group[=].element[=].target.code = #MedicationDispense.dosageInstruction.maxDosePerLifetime
* group[=].element[=].target.equivalence = #equivalent
// Notes du dispensateur
* group[=].element[+].code = #FRLMMedicationDispense.note
* group[=].element[=].target.code = #MedicationDispense.note
* group[=].element[=].target.equivalence = #equivalent
