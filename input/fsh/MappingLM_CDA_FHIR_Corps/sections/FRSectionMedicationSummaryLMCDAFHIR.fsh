Instance: FRSectionMedicationSummaryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationSummary → FRCDATraitements / FRLMMedicationSummary → FRCompositionDocument.section:sectionMedications"
Description: "Mapping des éléments du modèle métier FRLMMedicationSummary vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:sectionMedications."
* title = "Mapping Métier/CDA/FHIR : \"Traitements\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-summary"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements"
// élément racine
* group[=].element[+].code = #FRLMMedicationSummary
* group[=].element[=].target[+].code = #FRCDATraitements
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationSummary.codeSection
* group[=].element[=].target[+].code = #FRCDATraitements.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationSummary.titleSection
* group[=].element[=].target[+].code = #FRCDATraitements.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationSummary.description
* group[=].element[=].target[+].code = #FRCDATraitements.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration
* group[=].element[=].target[+].code = #FRCDATraitements.entry:FRCDATraitement
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-summary"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicationSummary
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedications
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationSummary.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedications.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationSummary.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedications.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationSummary.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedications.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement
* group[=].element[+].code = #FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedications.entry:FRMedicationAdministrationDocument
* group[=].element[=].target[=].equivalence = #equivalent
