Instance: FRImmunisationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImmunisation → FRCDAVaccination / FRLMImmunisation → FRImmunizationDocument"    
Description: "Mapping des éléments du modèle métier FRLMImmunisation vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Vaccination\""   
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination"
// Élément racine
* group[=].element[+].code = #FRLMImmunisation
* group[=].element[=].target.code = #FRCDAVaccination
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImmunisation.identifiant
* group[=].element[=].target.code = #FRCDAVaccination.id
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMImmunisation.header.status
* group[=].element[=].target.code = #FRCDAVaccination.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation
* group[=].element[=].target.code = #FRCDAVaccination.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Date de début de la vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.startDate
* group[=].element[=].target.code = #FRCDAVaccination.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent
// Date de fin de la vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.endDate
* group[=].element[=].target.code = #FRCDAVaccination.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent
// Maladie ou agent contre lequel la vaccination offre une protection
* group[=].element[+].code = #FRLMImmunisation.diseaseOrAgentTargeted
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMImmunisation.administeredProduct    
* group[=].element[=].target.code = #FRCDAVaccination.consumable:FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Voie d’administration
* group[=].element[+].code = #FRLMImmunisation.route
* group[=].element[=].target.code = #FRCDAVaccination.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMImmunisation.site
* group[=].element[=].target.code = #FRCDAVaccination.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée
* group[=].element[+].code = #FRLMImmunisation.doseQuantity
* group[=].element[=].target.code = #FRCDAVaccination.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rang de la vaccination
* group[=].element[+].code = #FRLMImmunisation.doseNumber
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMImmunisation.note
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMImmunisation.prescription
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Réaction observée suite au vaccin
* group[=].element[+].code = #FRLMImmunisation.reaction
* group[=].element[=].target.code = #FRCDAVaccination.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Raison de la vaccination
* group[=].element[+].code = #FRLMImmunisation.reasonCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance CDA explicite unique pour reasonCode dans ce profil CDA de vaccination."

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-document"
// Élément racine
* group[=].element[+].code = #FRLMImmunisation
* group[=].element[=].target.code = #FRImmunizationDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImmunisation.identifiant
* group[=].element[=].target.code = #FRImmunizationDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMImmunisation.header.status
* group[=].element[=].target.code = #FRImmunizationDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation
* group[=].element[=].target.code = #FRImmunizationDocument.occurrencePeriod
* group[=].element[=].target.equivalence = #equivalent
// Date début
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.startDate
* group[=].element[=].target.code = #FRImmunizationDocument.occurrencePeriod.start
* group[=].element[=].target.equivalence = #equivalent
// Date fin
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.endDate
* group[=].element[=].target.code = #FRImmunizationDocument.occurrencePeriod.end
* group[=].element[=].target.equivalence = #equivalent
// Maladie ciblée
* group[=].element[+].code = #FRLMImmunisation.diseaseOrAgentTargeted
* group[=].element[=].target.code = #FRImmunizationDocument.protocolApplied.targetDisease
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMImmunisation.administeredProduct
* group[=].element[=].target.code = #FRImmunizationDocument.vaccineCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMImmunisation.route
* group[=].element[=].target.code = #FRImmunizationDocument.route
* group[=].element[=].target.equivalence = #equivalent
// Site anatomique
* group[=].element[+].code = #FRLMImmunisation.site
* group[=].element[=].target.code = #FRImmunizationDocument.site
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMImmunisation.doseQuantity
* group[=].element[=].target.code = #FRImmunizationDocument.doseQuantity
* group[=].element[=].target.equivalence = #equivalent

// Rang
* group[=].element[+].code = #FRLMImmunisation.doseNumber
* group[=].element[=].target.code = #FRImmunizationDocument.protocolApplied.doseNumber
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMImmunisation.note
* group[=].element[=].target.code = #FRImmunizationDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Prescription
* group[=].element[+].code = #FRLMImmunisation.prescription
* group[=].element[=].target.code = #FRImmunizationDocument.basedOn
* group[=].element[=].target.equivalence = #equivalent
// Réaction
* group[=].element[+].code = #FRLMImmunisation.reaction
* group[=].element[=].target.code = #FRImmunizationDocument.reaction
* group[=].element[=].target.equivalence = #equivalent
// Raison
* group[=].element[+].code = #FRLMImmunisation.reasonCode
* group[=].element[=].target.code = #FRImmunizationDocument.reasonCode
* group[=].element[=].target.equivalence = #equivalent