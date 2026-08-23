Instance: FRConsentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMConsent → FRCDAAuthorization → Consent"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMConsent\" et l'élément CDA \"authorization\"
 - Mapping 2 : entre le modèle métier \"FRLMConsent\" et la ressource FHIR \"Consent\" (référencée depuis Composition via l'extension ConsentExtension)"""

* name = "FRConsentLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Consentement\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-authorization"

// Élément racine
* group[=].element[+].code = #FRLMConsent
* group[=].element[=].target.code = #Authorization
* group[=].element[=].target.display = "authorization"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMConsent.identifier
* group[=].element[=].target.code = #Authorization.consent.id
* group[=].element[=].target.equivalence = #equivalent

// Type de consentement
* group[=].element[+].code = #FRLMConsent.type
* group[=].element[=].target.code = #Authorization.consent.code
* group[=].element[=].target.equivalence = #equivalent

// Statut du consentement
* group[=].element[+].code = #FRLMConsent.status
* group[=].element[=].target.code = #Authorization.consent.statusCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Valeur fixée à 'completed'."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Consent"

// Élément racine
* group[=].element[+].code = #FRLMConsent
* group[=].element[=].target.code = #Consent
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référencé depuis Composition.extension:consent (ConsentExtension.value[x]:valueReference)."

// Identifiant
* group[=].element[+].code = #FRLMConsent.identifier
* group[=].element[=].target.code = #Consent.identifier
* group[=].element[=].target.equivalence = #equivalent

// Type de consentement
* group[=].element[+].code = #FRLMConsent.type
* group[=].element[=].target.code = #Consent.category
* group[=].element[=].target.equivalence = #equivalent

// Statut du consentement
* group[=].element[+].code = #FRLMConsent.status
* group[=].element[=].target.code = #Consent.status
* group[=].element[=].target.equivalence = #equivalent
