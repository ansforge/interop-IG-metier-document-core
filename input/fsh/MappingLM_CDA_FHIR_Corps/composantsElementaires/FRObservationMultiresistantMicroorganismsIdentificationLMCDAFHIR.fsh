// Il s'agit d'un profil spécifique au LDL. Il pourra être supprimé après vérification et validation par Alain des propositions qui lui ont été transmises : le profil métier peut être mappé directement vers le profil FHIR FRLMObservation ; le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument sera également supprimé. 
Instance: FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMultidrugResistantMicroorganismIdentification → FRCDAIdentificationMicroOrganismesMultiresistants / FRLMMultidrugResistantMicroorganismIdentification → FRObservationMultiresistantMicroorganismsIdentificationDocument"
Description: "Mapping des éléments du modèle métier FRLMMultidrugResistantMicroorganismIdentification vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument."
* title = "Mapping Métier/CDA/FHIR : Identification de micro-organismes multirésistants"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-multidrug-resistant-microorganism-identification"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants"
// Élément racine
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.identifier
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.id
* group[=].element[=].target.equivalence = #equivalent

// Sujet (patient)
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.subject
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.author[x]
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.participant
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.informant
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.informant
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.date
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.author.time
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.status
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.language
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.languageCode
* group[=].element[=].target.equivalence = #equivalent

// Source
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.source
* group[=].element[=].target.equivalence = #unmatched

// Date de l'observation
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.observationDate
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.type
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.result
* group[=].element[=].target.code = #FRCDAIdentificationMicroOrganismesMultiresistants.value
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-ml-multidrug-resistant-microorganism-identification"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-multiresistant-microorganism-document"

// Élément racine
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.identifier
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.identifier
* group[=].element[=].target.equivalence = #equivalent

// Patient / Sujet
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.subject
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.subject
* group[=].element[=].target.equivalence = #equivalent

// Auteur
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.author[x]
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Exécutant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.performer
* group[=].element[=].target.equivalence = #equivalent

// Participant
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Informateur
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.informant
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.extension:author
* group[=].element[=].target.equivalence = #equivalent

// Date de création
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.date
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.issued
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.status
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.status
* group[=].element[=].target.equivalence = #equivalent

// Langue
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.header.language
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.language
* group[=].element[=].target.equivalence = #equivalent

// Code de l'observation
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.type
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.code
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation
* group[=].element[+].code = #FRLMMultidrugResistantMicroorganismIdentification.result
* group[=].element[=].target.code = #FRObservationMultidrugResistantMicroorganismIdentification.valueString
* group[=].element[=].target.equivalence = #equivalent