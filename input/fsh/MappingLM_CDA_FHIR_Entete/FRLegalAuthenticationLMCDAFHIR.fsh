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

// Responsable professionnel de santé, patient/usager, système ou organisation
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]
* group[=].element[=].target.code = #LegalAuthenticator.assignedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où legalAuthenticator[x] référence un FRLMHealthProfessional (cf. FRHealthProfessionalLMCDAFHIR), un FRLMPatient (document d'expression personnelle, cf. FRPatientLMCDAFHIR), un FRLMDevice (cf. FRDeviceLMCDAFHIR) ou une FRLMOrganisation (ex : Dossier Pharmaceutique, cf. FROrganisationLMCDAFHIR)."

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

// Responsable professionnel de santé, patient/usager, système ou organisation
* group[=].element[+].code = #FRLMLegalAuthentication.legalAuthenticator[x]
* group[=].element[=].target.code = #Composition.attester.party
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où legalAuthenticator[x] référence un FRLMHealthProfessional (attester.party.resolve().ofType(PractitionerRole)) — cf. FRHealthProfessionalLMCDAFHIR. Cas où legalAuthenticator[x] référence un FRLMPatient (attester.party.resolve().ofType(Patient)) — cf. FRPatientLMCDAFHIR. Cas où legalAuthenticator[x] référence un FRLMDevice (attester.party.resolve().ofType(Device)) — cf. FRDeviceLMCDAFHIR (composant commun). Cas où legalAuthenticator[x] référence un FRLMOrganisation (attester.party.resolve().ofType(Organization)) — cf. FROrganisationLMCDAFHIR."
