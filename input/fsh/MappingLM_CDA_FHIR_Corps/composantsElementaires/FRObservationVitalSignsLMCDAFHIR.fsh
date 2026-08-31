Instance: FRObservationVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationVitalSign → FRCDASigneVitalObserve / FRLMObservationVitalSign → FRObservationVitalSignsDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationVitalSign vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument."
* name = "FRObservationVitalSignsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Observation Vital Sign\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-signe-vital-observe"
// Élément racine
* group[=].element[+].code = #FRLMObservationVitalSign
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDASigneVitalObserve"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.method
* group[=].element[=].target.code = #Observation.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.bodySite
* group[=].element[=].target.code = #Observation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservationVitalSign.interpretation
* group[=].element[=].target.code = #Observation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire libre
* group[=].element[+].code = #FRLMObservationVitalSign.note
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservationVitalSign.header.author[x]
* group[=].element[=].target.code = #Observation.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationVitalSign
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationVitalSignsDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Type de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMObservationVitalSign.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// Méthode utilisée pour l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationVitalSign.result
* group[=].element[=].target.code = #Observation.component.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservationVitalSign.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaire libre
* group[=].element[+].code = #FRLMObservationVitalSign.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMObservationVitalSign.header.author[x]
* group[=].element[=].target.code = #Observation.extension:author
* group[=].element[=].target.equivalence = #equivalent