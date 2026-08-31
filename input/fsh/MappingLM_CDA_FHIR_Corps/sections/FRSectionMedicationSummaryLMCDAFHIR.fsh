Instance: FRSectionMedicationSummaryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationSummary → FRCDATraitements / FRLMMedicationSummary → FRCompositionDocument.section:sectionMedications"
Description: "Mapping des éléments du modèle métier FRLMMedicationSummary vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:sectionMedications."
* name = "FRSectionMedicationSummaryLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Traitements\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationSummary"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements"
// élément racine
* group[=].element[+].code = #FRLMMedicationSummary
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDATraitements"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationSummary.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationSummary.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationSummary.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMMedicationSummary.entry.medicationAdministration
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].display = "FRCDATraitement"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationSummary"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicationSummary
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionMedications"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationSummary.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationSummary.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationSummary.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMMedicationSummary.entry.medicationAdministration
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRMedicationAdministrationDocument"
* group[=].element[=].target[=].equivalence = #equivalent
