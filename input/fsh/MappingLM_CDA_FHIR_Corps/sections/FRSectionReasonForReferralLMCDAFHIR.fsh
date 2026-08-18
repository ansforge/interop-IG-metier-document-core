Instance: FRSectionReasonForReferralLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMReasonForReferral → FRCDARaisonDeLaRecommandation / FRLMReasonForReferral → FRCompositionDocument.section:sectionReasonForReferral"
Description: "Mapping des éléments du modèle métier FRLMReasonForReferral vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:sectionReasonForReferral."
* title = "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-reason-for-referral"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-raison-de-la-recommandation"
// élément racine
* group[=].element[+].code = #FRLMReasonForReferral
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDARaisonDeLaRecommandation"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMReasonForReferral.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMReasonForReferral.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMReasonForReferral.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMReasonForReferral.entry.observation
* group[=].element[=].target[+].code = #Section.entry:FRCDASimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRLMReasonForReferral.entry.problemes
* group[=].element[=].target[+].code = #Section.entry:FRCDAProbleme
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-reason-for-referral"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMReasonForReferral
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionReasonForReferral"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMReasonForReferral.codeSection
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMReasonForReferral.titleSection
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMReasonForReferral.description
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMReasonForReferral.entry.observation
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRLMReasonForReferral.entry.problemes
* group[=].element[=].target[+].code = #Composition.section:sectionReasonForReferral.entry:FRConditionDocument
* group[=].element[=].target[=].equivalence = #equivalent
