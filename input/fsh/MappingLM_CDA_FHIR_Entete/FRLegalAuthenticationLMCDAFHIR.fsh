Instance: FRLegalAuthenticationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMLegalAuthentication → FRCDALegalAuthenticator → Composition.attester"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMLegalAuthentication\" et l'élément CDA \"legalAuthenticator\"
 - Mapping 2 : entre le modèle métier \"FRLMLegalAuthentication\" et l'élément FHIR \"Composition.attester\" """

* name = "FRLegalAuthenticationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Responsable du document\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLegalAuthentication"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-legal-authenticator"

// Élément racine
* group[=].element[+].code = #FRLMLegalAuthentication
* group[=].element[=].target.code = #LegalAuthenticator
* group[=].element[=].target.display = "legalAuthenticator"
* group[=].element[=].target.equivalence = #equivalent

// Date/heure de la prise de responsabilité
* group[=].element[+].code = #FRLMLegalAuthentication.dateTime
* group[=].element[=].target.code = #LegalAuthenticator.time
* group[=].element[=].target.equivalence = #equivalent

// Responsable professionnel de santé
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:healthProfessional
* group[=].element[=].target.code = #LegalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le responsable professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Responsable patient/usager
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:patient
* group[=].element[=].target.code = #LegalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le responsable patient/usager (document d'expression personnelle) est de type FRLMPatient, cf. FRPatientLMCDAFHIR."

// Responsable système
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:device
* group[=].element[=].target.code = #LegalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le responsable système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."

// Responsable organisation
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:organisation
* group[=].element[=].target.code = #LegalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le responsable structure (ex : Dossier Pharmaceutique) est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLegalAuthentication"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Élément racine
* group[=].element[+].code = #FRLMLegalAuthentication
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.where(mode='legal')"

// Date/heure de la prise de responsabilité
* group[=].element[+].code = #FRLMLegalAuthentication.dateTime
* group[=].element[=].target.code = #Composition.attester.time
* group[=].element[=].target.equivalence = #equivalent

// Responsable professionnel de santé
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:healthProfessional
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Responsable patient/usager
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:patient
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."

// Responsable système
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:device
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."

// Responsable organisation
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]:organisation
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "attester.party.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
