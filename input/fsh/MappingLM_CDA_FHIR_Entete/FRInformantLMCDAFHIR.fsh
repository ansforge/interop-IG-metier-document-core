Instance: FRInformantLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMInformant → FRCDAInformant → InformantExtension"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMInformant\" et l'élément CDA \"informant\"
 - Mapping 2 : entre le modèle métier \"FRLMInformant\" et l'extension FHIR \"InformantExtension\" """

* title = "Mapping Métier/CDA/FHIR : \"Informateur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMInformant"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-informant"

// Élément racine
* group[=].element[+].code = #FRLMInformant
* group[=].element[=].target.code = #Informant
* group[=].element[=].target.display = "informant"
* group[=].element[=].target.equivalence = #equivalent

// Informateur professionnel de santé
* group[=].element[+].code = #FRLMInformant.informant:professional
* group[=].element[=].target.code = #Informant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'informateur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Informateur organisation
* group[=].element[+].code = #FRLMInformant.informant:organisation
* group[=].element[=].target.code = #Informant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'informateur structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."

// Informateur patient/usager
* group[=].element[+].code = #FRLMInformant.informant:patient
* group[=].element[=].target.code = #Informant.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'informateur patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."

// Informateur personne de confiance
* group[=].element[+].code = #FRLMInformant.informant:relatedPerson
* group[=].element[=].target.code = #Informant.relatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'informateur personne liée au patient est de type FRLMRelatedPerson, cf. FRRelatedPersonLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMInformant"
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension"

// Élément racine
* group[=].element[+].code = #FRLMInformant
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.equivalence = #equivalent

// Informateur professionnel de santé
* group[=].element[+].code = #FRLMInformant.informant:professional
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Informateur organisation
* group[=].element[+].code = #FRLMInformant.informant:organisation
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."

// Informateur patient/usager
* group[=].element[+].code = #FRLMInformant.informant:patient
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."

// Informateur personne de confiance
* group[=].element[+].code = #FRLMInformant.informant:relatedPerson
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(RelatedPerson) — cf. FRRelatedPersonLMCDAFHIR."
