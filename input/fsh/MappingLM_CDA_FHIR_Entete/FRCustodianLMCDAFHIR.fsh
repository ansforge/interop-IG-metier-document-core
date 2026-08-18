Instance: FRCustodianLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHeaderDocument.custodian → FRCDACustodian → Composition.custodian"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre l'élément métier \"custodian\" du modèle FRLMHeaderDocument et l'élément CDA \"custodian\"
 - Mapping 2 : entre l'élément métier \"custodian\" et l'élément FHIR \"Composition.custodian\" """

* title = "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-custodian"

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #Custodian.assignedCustodian.representedCustodianOrganization
* group[=].element[=].target.display = "custodian.assignedCustodian.representedCustodianOrganization"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "La structure chargée de la conservation du document est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR pour le détail de son mapping."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.custodian.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
