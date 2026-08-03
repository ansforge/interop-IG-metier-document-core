Instance: FRObservationVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationVitalSign → FRCDASigneVitalObserve / FRLMObservationVitalSign → FRObservationVitalSignsDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationVitalSign vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Observation Vital Sign\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-vital-sign"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe"
// Élément racine
* group[=].element[+].code = #FRLMObservationVitalSign
* group[=].element[=].target.code = #FRCDASigneVitalObserve
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.header.identifier
* group[=].element[=].target.code = #FRCDASigneVitalObserve.id
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.observationDate[x]
* group[=].element[=].target.code = #FRCDASigneVitalObserve.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.type
* group[=].element[=].target.code = #FRCDASigneVitalObserve.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.header.status
* group[=].element[=].target.code = #FRCDASigneVitalObserve.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.method
* group[=].element[=].target.code = #FRCDASigneVitalObserve.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.bodySite
* group[=].element[=].target.code = #FRCDASigneVitalObserve.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.result
* group[=].element[=].target.code = #FRCDASigneVitalObserve.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservationVitalSign.interpretation
* group[=].element[=].target.code = #FRCDASigneVitalObserve.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire libre
* group[=].element[+].code = #FRLMObservationVitalSign.note
* group[=].element[=].target.code = #FRCDASigneVitalObserve.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservationVitalSign.header.author
* group[=].element[=].target.code = #FRCDASigneVitalObserve.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-vital-sign"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationVitalSign
* group[=].element[=].target.code = #FRObservationVitalSignsDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.header.identifier
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.observationDate[x]
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Type de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.type
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.header.status
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.method
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.method
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.bodySite
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.result
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.component.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservationVitalSign.interpretation
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaire libre
* group[=].element[+].code = #FRLMObservationVitalSign.note
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservationVitalSign.header.author
* group[=].element[=].target.code = #FRObservationVitalSignsDocument.extension:author
* group[=].element[=].target.equivalence = #equivalent