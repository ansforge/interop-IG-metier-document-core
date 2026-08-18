Instance: FRSectionCarePlansLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCarePlans → FRCDAPlanDeSoins / FRLMCarePlans → FRCompositionDocument.section:sectionPlanOfCare"
Description: "Mapping des éléments du modèle métier FRLMCarePlans vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:sectionPlanOfCare."
* title = "Mapping Métier/CDA/FHIR : \"Plan de soins\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA


* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-plan-soins"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-plan-de-soins"
// élément racine
* group[=].element[+].code = #FRLMCarePlans
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCarePlans.codeSection
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCarePlans.titleSection
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMCarePlans.description
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #FRLMCarePlans.entry.carePlans:FRLMCarePlan
* group[=].element[=].target[+].code = #FRCDAPlanDeSoins.entry:FRCDAActe
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : Métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plans"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMCarePlans
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPlanOfCare
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCarePlans.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPlanOfCare.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCarePlans.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPlanOfCare.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMCarePlans.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPlanOfCare.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #FRCDAPlanDeSoins.entry:carePlans:FRLMCarePlan
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPlanOfCare.entry:FRCarePlanDocument
* group[=].element[=].target[=].equivalence = #equivalent