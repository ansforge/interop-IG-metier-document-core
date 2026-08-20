Instance: FRIntendedRecipientLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMIntendedRecipient → FRCDAInformationRecipient → InformationRecipientExtension"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMIntendedRecipient\" et l'élément CDA \"informationRecipient\"
 - Mapping 2 : entre le modèle métier \"FRLMIntendedRecipient\" et l'extension FHIR \"InformationRecipientExtension\" """

* title = "Mapping Métier/CDA/FHIR : \"Destinataire prévu\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-intended-recipient"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-information-recipient"

// Élément racine
* group[=].element[+].code = #FRLMIntendedRecipient
* group[=].element[=].target.code = #informationRecipient
* group[=].element[=].target.equivalence = #equivalent

// Destinataire professionnel de santé
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:healthProfessional
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le destinataire professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Destinataire organisation
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:organisation
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le destinataire structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."

// Destinataire patient/usager
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:patient
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le destinataire patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."

// Destinataire personne de confiance
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:relatedPerson
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le destinataire personne liée au patient est de type FRLMRelatedPerson, cf. FRRelatedPersonLMCDAFHIR."

// Destinataire système
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:device
* group[=].element[=].target.code = #informationRecipient.intendedRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le destinataire système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-intended-recipient"
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension"

// Élément racine
* group[=].element[+].code = #FRLMIntendedRecipient
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.equivalence = #equivalent

// Destinataire professionnel de santé
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:healthProfessional
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Destinataire organisation
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:organisation
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."

// Destinataire patient/usager
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:patient
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."

// Destinataire personne de confiance
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:relatedPerson
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(RelatedPerson) — cf. FRRelatedPersonLMCDAFHIR."

// Destinataire système
* group[=].element[+].code = #FRLMIntendedRecipient.intendedRecipient:device
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
