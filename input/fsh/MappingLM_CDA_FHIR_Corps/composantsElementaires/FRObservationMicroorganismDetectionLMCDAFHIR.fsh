// Il s'agit d'un profil spécifique au LDL. Il pourra être supprimé après vérification et validation par Alain des propositions qui lui ont été transmises : le profil métier peut être mappé directement vers le profil FHIR FRLMObservation ; le profil FHIR FRObservationMicroorganismDetectionDocument sera également supprimé. 
Instance: FRObservationMicroorganismDetectionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMicroOrganismSearch → FRCDARechercheDeMicroOrganismes / FRLMMicroOrganismSearch → FRObservationMicroorganismDetectionDocument"
Description: "Mapping des éléments du modèle métier FRLMMicroOrganismSearch vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument."
* title = "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-micro-organism-search"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes"
// Élément racine
* group[=].element[+].code = #FRLMMicroOrganismSearch
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.identifier
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.id
* group[=].element[=].target.equivalence = #equivalent
// Sujet (patient)
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.subject
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.author[x]
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.performer[x]
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.participant[x]
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.participant
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.informant
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.informant
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.date
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.author.time
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.status
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.language
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.languageCode
* group[=].element[=].target.equivalence = #equivalent

// Source
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.source
* group[=].element[=].target.equivalence = #unmatched

// Date de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.observationDate
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMMicroOrganismSearch.type
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur
* group[=].element[+].code = #FRLMMicroOrganismSearch.result
* group[=].element[=].target.code = #FRCDARechercheDeMicroOrganismes.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-micro-organism-search"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-microorganism-detection-document"

// Élément racine
* group[=].element[+].code = #FRLMMicroOrganismSearch
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.identifier
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

// Patient / Sujet
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.subject
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.author[x]
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.performer[x]
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.participant[x]
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.informant
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.date
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.issued
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.status
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.status
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.language
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.language
* group[=].element[=].target.equivalence = #equivalent

// Code de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.type
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.result
* group[=].element[=].target.code = #FRObservationMicroorganismDetectionDocument.valueBoolean
* group[=].element[=].target.equivalence = #equivalent