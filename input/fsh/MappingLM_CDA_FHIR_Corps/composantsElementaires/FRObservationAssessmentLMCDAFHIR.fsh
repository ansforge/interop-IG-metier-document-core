Instance: FRObservationAssessmentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationAssessment → FRCDAEvaluation / FRLMObservationAssessment → FRObservationAssessmentDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationAssessment vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationAssessmentDocument."
* title = "Mapping Métier/CDA/FHIR : \"Assessment (Evaluation)\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-assessment"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-evaluation"
// Élément racine
* group[=].element[+].code = #FRLMObservationAssessment
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAEvaluation"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRLMObservationAssessment.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Méthode d'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.method
* group[=].element[=].target.equivalence = #unmatched
// Site de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.bodySite
* group[=].element[=].target.code = #FRLMObservationAssessment.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent

// Interprétation
* group[=].element[+].code = #FRLMObservationAssessment.interpretation
* group[=].element[=].target.code = #Observation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Note / description
* group[=].element[+].code = #FRLMObservationAssessment.note
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent
// Composants de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.component
* group[=].element[=].target.code = #Observation.entryRelationship:frEvaluationComposant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-assessment"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-assessment-document"
// Élément racine   
* group[=].element[+].code = #FRLMObservationAssessment
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationAssessmentDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut de l’évaluation
* group[=].element[+].code = #FRLMObservationAssessment.header.status
* group[=].element[=].target.code = #Observation.status.extension:statusReason
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRLMObservationAssessment.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// type d'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// méthode
* group[=].element[+].code = #FRLMObservationAssessment.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent
// site anatomique
* group[=].element[+].code = #FRLMObservationAssessment.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Valeur de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservationAssessment.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaire / note
* group[=].element[+].code = #FRLMObservationAssessment.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
// Composants de l'évaluation
* group[=].element[+].code = #FRLMObservationAssessment.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent