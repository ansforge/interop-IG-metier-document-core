Instance: FRImmunisationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImmunisation → FRCDAVaccination / FRLMImmunisation → FRImmunizationDocument"    
Description: "Mapping des éléments du modèle métier FRLMImmunisation vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument."
* title = "Mapping Métier/CDA/FHIR : \"Vaccination\""   
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-vaccination"
// Élément racine
* group[=].element[+].code = #FRLMImmunisation
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDAVaccination"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImmunisation.identifiant
* group[=].element[=].target.code = #SubstanceAdministration.id
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMImmunisation.header.status
* group[=].element[=].target.code = #SubstanceAdministration.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Date de début de la vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.startDate
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent
// Date de fin de la vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.endDate
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent
// Maladie ou agent contre lequel la vaccination offre une protection
* group[=].element[+].code = #FRLMImmunisation.diseaseOrAgentTargeted
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMImmunisation.administeredProduct    
* group[=].element[=].target.code = #SubstanceAdministration.consumable:FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Voie d’administration
* group[=].element[+].code = #FRLMImmunisation.route
* group[=].element[=].target.code = #SubstanceAdministration.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Région anatomique d'administration
* group[=].element[+].code = #FRLMImmunisation.site
* group[=].element[=].target.code = #SubstanceAdministration.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Dose administrée
* group[=].element[+].code = #FRLMImmunisation.doseQuantity
* group[=].element[=].target.code = #SubstanceAdministration.doseQuantity
* group[=].element[=].target.equivalence = #equivalent
// Rang de la vaccination
* group[=].element[+].code = #FRLMImmunisation.doseNumber
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frRangDeLaVaccination
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMImmunisation.note
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Référence de la prescription
* group[=].element[+].code = #FRLMImmunisation.prescription
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frPrescription
* group[=].element[=].target.equivalence = #equivalent
// Réaction observée suite au vaccin
* group[=].element[+].code = #FRLMImmunisation.reaction
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent
// Raison de la vaccination
* group[=].element[+].code = #FRLMImmunisation.reasonCode
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance CDA explicite unique pour reasonCode dans ce profil CDA de vaccination."

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-document"
// Élément racine
* group[=].element[+].code = #FRLMImmunisation
* group[=].element[=].target.code = #Immunization
* group[=].element[=].target.display = "FRImmunizationDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImmunisation.identifiant
* group[=].element[=].target.code = #Immunization.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMImmunisation.header.status
* group[=].element[=].target.code = #Immunization.status
* group[=].element[=].target.equivalence = #equivalent
// Période de vaccination
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation
* group[=].element[=].target.code = #Immunization.occurrencePeriod
* group[=].element[=].target.equivalence = #equivalent
// Date début
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.startDate
* group[=].element[=].target.code = #Immunization.occurrencePeriod.start
* group[=].element[=].target.equivalence = #equivalent
// Date fin
* group[=].element[+].code = #FRLMImmunisation.periodOfImmunisation.endDate
* group[=].element[=].target.code = #Immunization.occurrencePeriod.end
* group[=].element[=].target.equivalence = #equivalent
// Maladie ciblée
* group[=].element[+].code = #FRLMImmunisation.diseaseOrAgentTargeted
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease
* group[=].element[=].target.equivalence = #equivalent
// Vaccin
* group[=].element[+].code = #FRLMImmunisation.administeredProduct
* group[=].element[=].target.code = #Immunization.vaccineCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMImmunisation.route
* group[=].element[=].target.code = #Immunization.route
* group[=].element[=].target.equivalence = #equivalent
// Site anatomique
* group[=].element[+].code = #FRLMImmunisation.site
* group[=].element[=].target.code = #Immunization.site
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMImmunisation.doseQuantity
* group[=].element[=].target.code = #Immunization.doseQuantity
* group[=].element[=].target.equivalence = #equivalent

// Rang
* group[=].element[+].code = #FRLMImmunisation.doseNumber
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumber
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMImmunisation.note
* group[=].element[=].target.code = #Immunization.note
* group[=].element[=].target.equivalence = #equivalent
// Prescription
* group[=].element[+].code = #FRLMImmunisation.prescription
* group[=].element[=].target.code = #Immunization.basedOn
* group[=].element[=].target.equivalence = #equivalent
// Réaction
* group[=].element[+].code = #FRLMImmunisation.reaction
* group[=].element[=].target.code = #Immunization.reaction
* group[=].element[=].target.equivalence = #equivalent
// Raison
* group[=].element[+].code = #FRLMImmunisation.reasonCode
* group[=].element[=].target.code = #Immunization.reasonCode
* group[=].element[=].target.equivalence = #equivalent