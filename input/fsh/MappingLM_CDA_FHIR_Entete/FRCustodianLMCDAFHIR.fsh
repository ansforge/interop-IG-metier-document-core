Instance: FRCustodianLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHeaderDocument.custodian → FRCDACustodian → Composition.custodian"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre l'élément métier \"custodian\" du modèle FRLMHeaderDocument et l'élément CDA \"custodian\"
 - Mapping 2 : entre l'élément métier \"custodian\" et l'élément FHIR \"Composition.custodian\" """

* name = "FRCustodianLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-custodian"

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #Custodian.assignedCustodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "La structure chargée de la conservation du document est de type FRLMOrganisation ; cf. le groupe dédié ci-dessous pour le détail de son mapping vers fr-cda-represented-custodian-organization."

// Sous-groupe de mapping : structure (FRLMOrganisation) → CDA
// Custodian.assignedCustodian référence le profil CDA fr-cda-assigned-custodian, dont
// representedCustodianOrganization référence à son tour le profil CDA SÉPARÉ
// fr-cda-represented-custodian-organization ; la structure y est donc mappée dans un groupe
// dédié dont le target system est fr-cda-represented-custodian-organization directement.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-represented-custodian-organization"
// Identifiant
* group[=].element[+].code = #FRLMOrganisation.identifier
* group[=].element[=].target.code = #CustodianOrganization.id
* group[=].element[=].target.equivalence = #equivalent
// Nom
* group[=].element[+].code = #FRLMOrganisation.name
* group[=].element[=].target.code = #CustodianOrganization.name
* group[=].element[=].target.equivalence = #equivalent
// Adresse
* group[=].element[+].code = #FRLMOrganisation.address
* group[=].element[=].target.code = #CustodianOrganization.addr
* group[=].element[=].target.equivalence = #equivalent
// Télécom
* group[=].element[+].code = #FRLMOrganisation.telecom
* group[=].element[=].target.code = #CustodianOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.custodian.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
