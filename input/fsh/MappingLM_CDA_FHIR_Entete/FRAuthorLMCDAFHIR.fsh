Instance: FRAuthorLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHeaderDocument.author[x] → FRCDAAuthor → Composition.author"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre l'élément métier \"author[x]\" du modèle FRLMHeaderDocument et l'élément CDA \"author\"
 - Mapping 2 : entre l'élément métier \"author[x]\" et l'élément FHIR \"Composition.author\" """

* title = "Mapping Métier/CDA/FHIR : \"Auteur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-header-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-author"

// Élément racine
* group[=].element[+].code = #FRLMHeaderDocument.author
* group[=].element[=].target.code = #author
* group[=].element[=].target.equivalence = #equivalent

// Auteur professionnel de santé
* group[=].element[+].code = #FRLMHeaderDocument.author:healthProfessional
* group[=].element[=].target.code = #author.assignedAuthor
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'auteur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Auteur organisation
* group[=].element[+].code = #FRLMHeaderDocument.author:organisation
* group[=].element[=].target.code = #author.assignedAuthor
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'auteur structure est de type FRLMOrganisation, porté par assignedAuthor.representedOrganization, cf. FROrganisationLMCDAFHIR."

// Auteur système
* group[=].element[+].code = #FRLMHeaderDocument.author:device
* group[=].element[=].target.code = #author.assignedAuthor.assignedAuthoringDevice
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'auteur système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-header-document"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Élément racine
* group[=].element[+].code = #FRLMHeaderDocument.author
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(PractitionerRole or Organization or Device)"

// Auteur professionnel de santé
* group[=].element[+].code = #FRLMHeaderDocument.author:healthProfessional
* group[=].element[=].target.code = #Composition.author.PractitionerRole
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Auteur organisation
* group[=].element[+].code = #FRLMHeaderDocument.author:organisation
* group[=].element[=].target.code = #Composition.author.Organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."

// Auteur système
* group[=].element[+].code = #FRLMHeaderDocument.author:device
* group[=].element[=].target.code = #Composition.author.Device
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
