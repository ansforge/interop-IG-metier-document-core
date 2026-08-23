// Il s'agit d'un profil spécifique au LDL. Il pourra être supprimé après vérification et validation par Alain des propositions qui lui ont été transmises : le profil métier peut être mappé directement vers le profil FHIR FRLMObservation ; le profil FHIR FRObservationMicroorganismDetectionDocument sera également supprimé. 
Instance: FRObservationMicroorganismDetectionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMicroOrganismSearch → FRCDARechercheDeMicroOrganismes / FRLMMicroOrganismSearch → FRObservationMicroorganismDetectionDocument"
Description: "Mapping des éléments du modèle métier FRLMMicroOrganismSearch vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument."
* name = "FRObservationMicroorganismDetectionLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMicroOrganismSearch"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-recherche-de-micro-organismes"
// Élément racine
* group[=].element[+].code = #FRLMMicroOrganismSearch
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDARechercheDeMicroOrganismes"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent
// Sujet (patient)
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.subject
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.author[x]
* group[=].element[=].target.code = #Observation.author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.performer[x]
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.participant[x]
* group[=].element[=].target.code = #Observation.participant
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.informant
* group[=].element[=].target.code = #Observation.informant
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.date
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.language
* group[=].element[=].target.code = #Observation.languageCode
* group[=].element[=].target.equivalence = #equivalent

// Source
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.source
* group[=].element[=].target.equivalence = #unmatched

// Date de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.date
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMMicroOrganismSearch.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur
* group[=].element[+].code = #FRLMMicroOrganismSearch.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMicroOrganismSearch"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-microorganism-detection-document"

// Élément racine
* group[=].element[+].code = #FRLMMicroOrganismSearch
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationMicroorganismDetectionDocument"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent

// Patient / Sujet
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.subject
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.author[x]
* group[=].element[=].target.code = #Observation.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.performer[x]
* group[=].element[=].target.code = #Observation.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.participant[x]
* group[=].element[=].target.code = #Observation.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.informant
* group[=].element[=].target.code = #Observation.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.date
* group[=].element[=].target.code = #Observation.issued
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMicroOrganismSearch.header.language
* group[=].element[=].target.code = #Observation.language
* group[=].element[=].target.equivalence = #equivalent

// Code de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation
* group[=].element[+].code = #FRLMMicroOrganismSearch.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent