Instance: FRSectionCarePlansLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCarePlans → FRCDAPlanDeSoins / FRLMCarePlans → FRCompositionDocument.section:sectionPlanOfCare"
Description: "Mapping des éléments du modèle métier FRLMCarePlans vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:sectionPlanOfCare."
* name = "FRSectionCarePlansLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Plan de soins\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA


* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlans"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-plan-de-soins"
// élément racine
* group[=].element[+].code = #FRLMCarePlans
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAPlanDeSoins"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCarePlans.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCarePlans.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMCarePlans.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #FRLMCarePlans.entry.carePlans
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : Métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlans"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMCarePlans
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionPlanOfCare"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMCarePlans.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCarePlans.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMCarePlans.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Plan de soins
* group[=].element[+].code = #Section.entry
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent