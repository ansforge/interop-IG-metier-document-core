Instance: FRDataEntererLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDataEnterer → FRCDADataEnterer → DataEntererExtension"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMDataEnterer\" et l'élément CDA \"dataEnterer\"
 - Mapping 2 : entre le modèle métier \"FRLMDataEnterer\" et l'extension FHIR \"DataEntererExtension\" """

* title = "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-data-enterer"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer"

// Élément racine
* group[=].element[+].code = #FRLMDataEnterer
* group[=].element[=].target.code = #dataEnterer
* group[=].element[=].target.equivalence = #equivalent

// Date de saisie
* group[=].element[+].code = #FRLMDataEnterer.date
* group[=].element[=].target.code = #dataEnterer.time
* group[=].element[=].target.equivalence = #equivalent

// Opérateur de saisie professionnel de santé
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer:healthProfessional
* group[=].element[=].target.code = #dataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'opérateur de saisie professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Opérateur de saisie patient/usager
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer:patient
* group[=].element[=].target.code = #dataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'opérateur de saisie patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-data-enterer"
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"

// Élément racine
* group[=].element[+].code = #FRLMDataEnterer
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.equivalence = #equivalent

// Date de saisie
* group[=].element[+].code = #FRLMDataEnterer.date
* group[=].element[=].target.code = #Extension.extension:time.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Opérateur de saisie professionnel de santé
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer:healthProfessional
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Opérateur de saisie patient/usager
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer:patient
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."
