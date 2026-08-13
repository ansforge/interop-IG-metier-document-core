Instance: FRAttesterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAttester → FRCDAAuthenticator → Composition.attester"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMAttester\" et l'élément CDA \"authenticator\"
 - Mapping 2 : entre le modèle métier \"FRLMAttester\" et l'élément FHIR \"Composition.attester\" """

* title = "Mapping Métier/CDA/FHIR : \"Validateur\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attester"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator"

// Élément racine
* group[=].element[+].code = #FRLMAttester
* group[=].element[=].target.code = #authenticator
* group[=].element[=].target.equivalence = #equivalent

// Date/heure de l'attestation de validité
* group[=].element[+].code = #FRLMAttester.dateTime
* group[=].element[=].target.code = #authenticator.time
* group[=].element[=].target.equivalence = #equivalent

// Validateur professionnel de santé
* group[=].element[+].code = #FRLMAttester.attester:healthProfessional
* group[=].element[=].target.code = #authenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le validateur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Validateur système
* group[=].element[+].code = #FRLMAttester.attester:device
* group[=].element[=].target.code = #authenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le validateur système est de type FRLMDevice (composant commun), cf. FRDeviceLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attester"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"

// Élément racine
* group[=].element[+].code = #FRLMAttester
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.where(mode='professional')"

// Date/heure de l'attestation de validité
* group[=].element[+].code = #FRLMAttester.dateTime
* group[=].element[=].target.code = #Composition.attester.time
* group[=].element[=].target.equivalence = #equivalent

// Validateur professionnel de santé
* group[=].element[+].code = #FRLMAttester.attester:healthProfessional
* group[=].element[=].target.code = #Composition.attester.party.PractitionerRole
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Validateur système
* group[=].element[+].code = #FRLMAttester.attester:device
* group[=].element[=].target.code = #Composition.attester.party.Device
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
