Instance: FRDataEntererLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDataEnterer → FRCDADataEnterer → DataEntererExtension"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMDataEnterer\" et l'élément CDA \"dataEnterer\"
 - Mapping 2 : entre le modèle métier \"FRLMDataEnterer\" et l'extension FHIR \"DataEntererExtension\" """

* name = "FRDataEntererLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-data-enterer"

// Élément racine
* group[=].element[+].code = #FRLMDataEnterer
* group[=].element[=].target.code = #DataEnterer
* group[=].element[=].target.display = "dataEnterer"
* group[=].element[=].target.equivalence = #equivalent

// Date de saisie
* group[=].element[+].code = #FRLMDataEnterer.date
* group[=].element[=].target.code = #DataEnterer.time
* group[=].element[=].target.equivalence = #equivalent

// Opérateur de saisie professionnel de santé ou patient/usager
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer[x]
* group[=].element[=].target.code = #DataEnterer.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où dataEnterer[x] référence un FRLMHealthProfessional (cf. FRHealthProfessionalLMCDAFHIR) ou un FRLMPatient (cf. FRPatientLMCDAFHIR)."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer"
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"

// Élément racine
* group[=].element[+].code = #FRLMDataEnterer
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.equivalence = #equivalent

// Date de saisie
* group[=].element[+].code = #FRLMDataEnterer.date
* group[=].element[=].target.code = #Extension.extension:time.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Opérateur de saisie professionnel de santé ou patient/usager
* group[=].element[+].code = #FRLMDataEnterer.dataEnterer[x]
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où dataEnterer[x] référence un FRLMHealthProfessional (Extension.extension:party.value[x].resolve().ofType(PractitionerRole)) — cf. FRHealthProfessionalLMCDAFHIR. Cas où dataEnterer[x] référence un FRLMPatient (Extension.extension:party.value[x].resolve().ofType(Patient)) — cf. FRPatientLMCDAFHIR."
