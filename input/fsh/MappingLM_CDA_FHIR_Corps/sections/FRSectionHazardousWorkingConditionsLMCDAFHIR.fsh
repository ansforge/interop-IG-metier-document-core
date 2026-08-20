// Garder le nom de la section FHIR `uncodedOccupationalRiskFactors` ou le remplacer par le nom du modèle métier `hazardousWorkingConditions` ?
Instance: FRSectionHazardousWorkingConditionsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHazardousWorkingConditions → FRCDAFacteursDeRisqueProfessionnelsNonCode / FRLMHazardousWorkingConditions → FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors"
Description: "Mapping des éléments du modèle métier FRLMHazardousWorkingConditions vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors."
* title = "Mapping Métier/CDA/FHIR : \"Facteurs de risque professionnels\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code"
// élément racine
* group[=].element[+].code = #FRLMHazardousWorkingConditions
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.codeSection
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.titleSection
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.description
* group[=].element[=].target[+].code = #FRCDAFacteursDeRisqueProfessionnelsNonCode.text
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMHazardousWorkingConditions
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMHazardousWorkingConditions.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.text
* group[=].element[=].target[=].equivalence = #equivalent