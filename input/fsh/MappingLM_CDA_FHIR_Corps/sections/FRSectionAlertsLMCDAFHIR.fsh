Instance: FRSectionAlertsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAlerts → FRCDAPointsDeVigilancesNonCode / FRLMAlerts → FRCompositionDocument.section:sectionAlerts"
Description: "Mapping des éléments du modèle métier FRLMAlerts vers la section CDA FRCDAPointsDeVigilancesNonCode, puis vers le profil FHIR FRCompositionDocument.section:alerts."
* title = "Mapping Métier/CDA/FHIR : \"Points de vigilance\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alerts"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-points-de-vigilances-non-code"
// élément racine
* group[=].element[+].code = #FRLMAlerts
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAPointsDeVigilancesNonCode"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAlerts.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMAlerts.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMAlerts.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Points de vigilance
* group[=].element[+].code = #FRLMAlerts.entry.alert
* group[=].element[=].target[+].equivalence = #unmatched

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alerts"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMAlerts
* group[=].element[=].target[+].code = #Composition.section:sectionAlerts
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionAlerts"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAlerts.codeSection
* group[=].element[=].target[+].code = #Composition.section:sectionAlerts.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMAlerts.titleSection
* group[=].element[=].target[+].code = #Composition.section:sectionAlerts.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMAlerts.description
* group[=].element[=].target[+].code = #Composition.section:sectionAlerts.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Points de vigilance
* group[=].element[+].code = #FRLMAlerts.entry.alert
* group[=].element[=].target[+].code = #Composition.section:sectionAlerts.entry:Flag
* group[=].element[=].target[=].equivalence = #equivalent