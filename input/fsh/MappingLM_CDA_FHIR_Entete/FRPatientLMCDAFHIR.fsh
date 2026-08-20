Instance: FRPatientLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatient → FRCDARecordTarget → FrPatientDocument"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMPatient\" et l'élément CDA \"recordTarget\"
 - Mapping 2 : entre le modèle métier \"FRLMPatient\" et le profil FHIR \"FrPatientDocument\" """

* title = "Mapping Métier/CDA/FHIR : \"Patient/Usager\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-record-target"

// Élément racine
* group[=].element[+].code = #FRLMPatient
* group[=].element[=].target.code = #recordTarget
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMPatient.identifier
* group[=].element[=].target.code = #recordTarget.patientRole.id
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMPatient.address
* group[=].element[=].target.code = #recordTarget.patientRole.addr
* group[=].element[=].target.equivalence = #equivalent

// Coordonnées télécom
* group[=].element[+].code = #FRLMPatient.telecom
* group[=].element[=].target.code = #recordTarget.patientRole.telecom
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMPatient.name:officialName
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Nom officiel/de naissance (qualifier CDA 'BR')."
* group[=].element[+].code = #FRLMPatient.name:usualName
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Nom utilisé au quotidien (qualifier CDA 'CL')."
* group[=].element[+].code = #FRLMPatient.name:officialName.family
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.family@qualifier='BR'
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName.family
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.family@qualifier='CL'
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:officialName.given
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.given@qualifier='BR'
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName.given
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.given@qualifier='CL'
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:officialName.use
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.family@qualifier='BR'
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "name.use='official' se rapproche du qualifier CDA 'BR' sans en être strictement équivalent."
* group[=].element[+].code = #FRLMPatient.name:usualName.use
* group[=].element[=].target.code = #recordTarget.patientRole.patient.name.family@qualifier='CL'
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "name.use='usual' se rapproche du qualifier CDA 'CL' sans en être strictement équivalent."

// Sexe administratif
* group[=].element[+].code = #FRLMPatient.administrativeGender
* group[=].element[=].target.code = #recordTarget.patientRole.patient.administrativeGenderCode
* group[=].element[=].target.equivalence = #equivalent

// Date de naissance
* group[=].element[+].code = #FRLMPatient.dateOfBirth
* group[=].element[=].target.code = #recordTarget.patientRole.patient.birthTime
* group[=].element[=].target.equivalence = #equivalent

// Décès
* group[=].element[+].code = #FRLMPatient.deceased:boolean
* group[=].element[=].target.code = #recordTarget.patientRole.patient.sdtc:deceasedInd
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.deceased:dateTime
* group[=].element[=].target.code = #recordTarget.patientRole.patient.sdtc:deceasedTime
* group[=].element[=].target.equivalence = #equivalent

// Naissance multiple
* group[=].element[+].code = #FRLMPatient.multipleBirth:boolean
* group[=].element[=].target.code = #recordTarget.patientRole.patient.sdtc:multipleBirthInd
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.multipleBirth:integer
* group[=].element[=].target.code = #recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber
* group[=].element[=].target.equivalence = #equivalent

// Lieu de naissance
* group[=].element[+].code = #FRLMPatient.birthPlace
* group[=].element[=].target.code = #recordTarget.patientRole.patient.birthPlace
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "FRLMPatient.birthPlace est une Address simple ; nom du lieu, adresse et code officiel géographique sont portés par les composantes standard de cette adresse (text, line, city, country, etc.)."

// Représentant du patient/usager
* group[=].element[+].code = #FRLMPatient.contact
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.address
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.addr
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.telecom
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.name
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.guardianPerson.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.name.family
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.guardianPerson.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.name.given
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.guardianPerson.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.organization
* group[=].element[=].target.code = #recordTarget.patientRole.patient.guardian.guardianOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document"

// Élément racine
* group[=].element[+].code = #FRLMPatient
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMPatient.identifier
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMPatient.address
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.equivalence = #equivalent

// Coordonnées télécom
* group[=].element[+].code = #FRLMPatient.telecom
* group[=].element[=].target.code = #Patient.telecom
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMPatient.name:officialName
* group[=].element[=].target.code = #Patient.name:officialName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName
* group[=].element[=].target.code = #Patient.name:usualName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:officialName.family
* group[=].element[=].target.code = #Patient.name:officialName.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName.family
* group[=].element[=].target.code = #Patient.name:usualName.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:officialName.given
* group[=].element[=].target.code = #Patient.name:officialName.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName.given
* group[=].element[=].target.code = #Patient.name:usualName.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:officialName.use
* group[=].element[=].target.code = #Patient.name:officialName.use
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.name:usualName.use
* group[=].element[=].target.code = #Patient.name:usualName.use
* group[=].element[=].target.equivalence = #equivalent

// Sexe administratif
* group[=].element[+].code = #FRLMPatient.administrativeGender
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.equivalence = #equivalent

// Date de naissance
* group[=].element[+].code = #FRLMPatient.dateOfBirth
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.equivalence = #equivalent

// Décès
* group[=].element[+].code = #FRLMPatient.deceased:boolean
* group[=].element[=].target.code = #Patient.deceased[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Valeur booléenne de deceased[x]."
* group[=].element[+].code = #FRLMPatient.deceased:dateTime
* group[=].element[=].target.code = #Patient.deceased[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Valeur dateTime de deceased[x]."

// Naissance multiple
* group[=].element[+].code = #FRLMPatient.multipleBirth:boolean
* group[=].element[=].target.code = #Patient.multipleBirth[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Valeur booléenne de multipleBirth[x]."
* group[=].element[+].code = #FRLMPatient.multipleBirth:integer
* group[=].element[=].target.code = #Patient.multipleBirth[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Valeur integer de multipleBirth[x]."

// Lieu de naissance
* group[=].element[+].code = #FRLMPatient.birthPlace
* group[=].element[=].target.code = #Patient.extension:birthPlace
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Patient.extension:birthPlace.value[FRCoreAddressProfile]"

// Représentant du patient/usager
* group[=].element[+].code = #FRLMPatient.contact
* group[=].element[=].target.code = #Patient.contact
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Patient.contact.relationship:Role='GUARD'"
* group[=].element[+].code = #FRLMPatient.contact.address
* group[=].element[=].target.code = #Patient.contact.address
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.telecom
* group[=].element[=].target.code = #Patient.contact.telecom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.name
* group[=].element[=].target.code = #Patient.contact.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.name.family
* group[=].element[=].target.code = #Patient.contact.name
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Porté par le composant family de Patient.contact.name (HumanName), non détaillé dans la StructureDefinition."
* group[=].element[+].code = #FRLMPatient.contact.name.given
* group[=].element[=].target.code = #Patient.contact.name
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Porté par le composant given de Patient.contact.name (HumanName), non détaillé dans la StructureDefinition."
* group[=].element[+].code = #FRLMPatient.contact.organization
* group[=].element[=].target.code = #Patient.contact.organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient."
