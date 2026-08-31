Instance: FRSectionReasonForReferralLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMReasonForReferral → FRCDARaisonDeLaRecommandation / FRLMReasonForReferral → FRCompositionDocument.section:sectionReasonForReferral"
Description: "Mapping des éléments du modèle métier FRLMReasonForReferral vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:sectionReasonForReferral."
* name = "FRSectionReasonForReferralLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral"
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
* group[=].element[=].target[+].code = #Section.entry:frSimpleObservation.observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRLMReasonForReferral.entry.problemes
* group[=].element[=].target[+].code = #Section.entry:frProbleme.observation
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMReasonForReferral
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionReasonForReferral"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMReasonForReferral.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMReasonForReferral.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMReasonForReferral.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMReasonForReferral.entry.observation
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "Observation"
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problème
* group[=].element[+].code = #FRLMReasonForReferral.entry.problemes
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRConditionDocument"
* group[=].element[=].target[=].equivalence = #equivalent
