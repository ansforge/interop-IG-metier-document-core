Instance: FRPatientLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatient → FRCDARecordTarget → FrPatientDocument"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMPatient\" et l'élément CDA \"recordTarget\"
 - Mapping 2 : entre le modèle métier \"FRLMPatient\" et le profil FHIR \"FrPatientDocument\" """

* name = "FRPatientLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Patient/Usager\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-record-target"

// Élément racine
* group[=].element[+].code = #FRLMPatient
* group[=].element[=].target.code = #RecordTarget
* group[=].element[=].target.display = "recordTarget"
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → CDA (personne référencée par patientRole)
// RecordTarget.patientRole référence le profil CDA SÉPARÉ fr-cda-patient-role ; id/addr/telecom
// sont donc mappés dans un groupe dédié dont le target system est fr-cda-patient-role.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient-role"

// Identifiant
* group[=].element[+].code = #FRLMPatient.identifier
* group[=].element[=].target.code = #PatientRole.id
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMPatient.address
* group[=].element[=].target.code = #PatientRole.addr
* group[=].element[=].target.equivalence = #equivalent

// Coordonnées télécom
* group[=].element[+].code = #FRLMPatient.telecom
* group[=].element[=].target.code = #PatientRole.telecom
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → CDA (personne physique référencée par patientRole.patient)
// RecordTarget.patientRole.patient référence (via patientRole, lui-même référencé vers
// fr-cda-patient-role) le profil CDA fr-cda-patient ; ses sous-champs sont donc mappés dans
// un groupe dédié dont le target system est fr-cda-patient directement.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient"

// Nom
// Le modèle métier ne distingue pas nom officiel/nom usuel : FRLMPatient.name est une
// occurrence unique (1..1).
* group[=].element[+].code = #FRLMPatient.name
* group[=].element[=].target.code = #Patient.name
* group[=].element[=].target.equivalence = #equivalent

// Sexe administratif
* group[=].element[+].code = #FRLMPatient.administrativeGender
* group[=].element[=].target.code = #Patient.administrativeGenderCode
* group[=].element[=].target.equivalence = #equivalent

// Date de naissance
* group[=].element[+].code = #FRLMPatient.dateOfBirth
* group[=].element[=].target.code = #Patient.birthTime
* group[=].element[=].target.equivalence = #equivalent

// Décès
* group[=].element[+].code = #FRLMPatient.deceased[x]
* group[=].element[=].target.code = #Patient.sdtcDeceasedInd
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où deceased[x] est de type boolean."
* group[=].element[+].code = #FRLMPatient.deceased[x]
* group[=].element[=].target.code = #Patient.sdtcDeceasedTime
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où deceased[x] est de type dateTime."

// Naissance multiple
* group[=].element[+].code = #FRLMPatient.multipleBirth[x]
* group[=].element[=].target.code = #Patient.sdtcMultipleBirthInd
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où multipleBirth[x] est de type boolean."
* group[=].element[+].code = #FRLMPatient.multipleBirth[x]
* group[=].element[=].target.code = #Patient.sdtcMultipleBirthOrderNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où multipleBirth[x] est de type integer."

// Lieu de naissance
* group[=].element[+].code = #FRLMPatient.birthPlace
* group[=].element[=].target.code = #Patient.birthplace
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "FRLMPatient.birthPlace est une Address simple ; nom du lieu, adresse et code officiel géographique sont portés par les composantes standard de cette adresse (text, line, city, country, etc.)."

// Représentant du patient/usager
// Patient.guardian (type CDA Guardian) n'est pas décomposé/profilé : addr,
// telecom, nom et organisation du représentant sont donc tous portés globalement par
// l'ensemble de guardian.
* group[=].element[+].code = #FRLMPatient.contact
* group[=].element[=].target.code = #Patient.guardian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMPatient.contact.address
* group[=].element[=].target.code = #Patient.guardian
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FRLMPatient.contact.telecom
* group[=].element[=].target.code = #Patient.guardian
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FRLMPatient.contact.name
* group[=].element[=].target.code = #Patient.guardian
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #FRLMPatient.contact.organization
* group[=].element[=].target.code = #Patient.guardian
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient ; non adressable séparément dans le type CDA Guardian ici."

// Sous-groupe de mapping : modèle métier → CDA (nom du patient référencé par FRLMHumanName)
// FRLMPatient.name référence le type métier séparé FRLMHumanName ; ses sous-champs sont
// donc mappés dans un groupe dédié.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient"

// Identifie le type de nom
* group[=].element[+].code = #FRLMHumanName.use
* group[=].element[=].target.code = #Patient.name.use
* group[=].element[=].target.equivalence = #equivalent
// Nom
* group[=].element[+].code = #FRLMHumanName.family
* group[=].element[=].target.code = #Patient.name.item.family
* group[=].element[=].target.equivalence = #equivalent
// Prénom
* group[=].element[+].code = #FRLMHumanName.given
* group[=].element[=].target.code = #Patient.name.item.given
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
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
// Le modèle métier ne distingue pas nom officiel/nom usuel : FRLMPatient.name est une
// occurrence unique (1..1), reprise ici sur les deux slices FHIR.
* group[=].element[+].code = #FRLMPatient.name
* group[=].element[=].target.code = #Patient.name:officialName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le modèle métier ne porte qu'un seul nom (1..1) ; utilisé comme nom de naissance."
* group[=].element[+].code = #FRLMPatient.name
* group[=].element[=].target.code = #Patient.name:usualName
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le modèle métier ne porte qu'un seul nom (1..1) ; utilisé comme nom usuel."

// Sexe administratif
* group[=].element[+].code = #FRLMPatient.administrativeGender
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.equivalence = #equivalent

// Date de naissance
* group[=].element[+].code = #FRLMPatient.dateOfBirth
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.equivalence = #equivalent

// Décès
* group[=].element[+].code = #FRLMPatient.deceased[x]
* group[=].element[=].target.code = #Patient.deceased[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "deceased[x] est de type boolean ou dateTime des deux côtés."

// Naissance multiple
* group[=].element[+].code = #FRLMPatient.multipleBirth[x]
* group[=].element[=].target.code = #Patient.multipleBirth[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "multipleBirth[x] est de type boolean ou integer des deux côtés."

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
* group[=].element[+].code = #FRLMPatient.contact.organization
* group[=].element[=].target.code = #Patient.contact.organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient."
