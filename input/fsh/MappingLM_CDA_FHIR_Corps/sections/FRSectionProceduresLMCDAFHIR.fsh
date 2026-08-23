Instance: FRSectionProceduresLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProcedures → FRCDAHistoriqueDesActes / FRLMProcedures → FRCompositionDocument.section:sectionProceduresHx"
Description: "Mapping des éléments du modèle métier FRLMProcedures vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:sectionProceduresHx."
* name = "FRSectionProceduresLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Historique des actes\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-actes"
// élément racine
* group[=].element[+].code = #FRLMProcedures
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAHistoriqueDesActes"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMProcedures.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMProcedures.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMProcedures.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMProcedures.entry.procedure
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMProcedures
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionProceduresHx"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMProcedures.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMProcedures.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMProcedures.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMProcedures.entry.procedure
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent