# Mapping FRLMPatient → FRCDARecordTarget → FrPatientDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPatient → FRCDARecordTarget → FrPatientDocument 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMPatient" et l'élément CDA "recordTarget"
* Mapping 2 : entre le modèle métier "FRLMPatient" et le profil FHIR "FrPatientDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPatientLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPatientLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Patient/Usager\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-18T08:13:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMPatient\\\" et l'élément CDA \\\"recordTarget\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMPatient\\\" et le profil FHIR \\\"FrPatientDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-record-target",
    "element" : [{
      "code" : "FRLMPatient",
      "target" : [{
        "code" : "recordTarget",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.identifier",
      "target" : [{
        "code" : "recordTarget.patientRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.address",
      "target" : [{
        "code" : "recordTarget.patientRole.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.telecom",
      "target" : [{
        "code" : "recordTarget.patientRole.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name",
        "equivalence" : "equivalent",
        "comment" : "Nom officiel/de naissance (qualifier CDA 'BR')."
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name",
        "equivalence" : "equivalent",
        "comment" : "Nom utilisé au quotidien (qualifier CDA 'CL')."
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.family",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.family@qualifier='BR'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.family",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.family@qualifier='CL'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.given",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.given@qualifier='BR'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.given",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.given@qualifier='CL'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.use",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.family@qualifier='BR'",
        "equivalence" : "relatedto",
        "comment" : "name.use='official' se rapproche du qualifier CDA 'BR' sans en être strictement équivalent."
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.use",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.name.family@qualifier='CL'",
        "equivalence" : "relatedto",
        "comment" : "name.use='usual' se rapproche du qualifier CDA 'CL' sans en être strictement équivalent."
      }]
    },
    {
      "code" : "FRLMPatient.administrativeGender",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.administrativeGenderCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.dateOfBirth",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.birthTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.deceased:boolean",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.sdtc:deceasedInd",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.deceased:dateTime",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.sdtc:deceasedTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth:boolean",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthInd",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth:integer",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.sdtc:multipleBirthOrderNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.birthPlace",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.birthPlace",
        "equivalence" : "equivalent",
        "comment" : "FRLMPatient.birthPlace est une Address simple ; nom du lieu, adresse et code officiel géographique sont portés par les composantes standard de cette adresse (text, line, city, country, etc.)."
      }]
    },
    {
      "code" : "FRLMPatient.contact",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.address",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.telecom",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.name",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.name.family",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.name.given",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.guardianPerson.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.organization",
      "target" : [{
        "code" : "recordTarget.patientRole.patient.guardian.guardianOrganization",
        "equivalence" : "equivalent",
        "comment" : "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient",
      "target" : [{
        "code" : "Patient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.identifier",
      "target" : [{
        "code" : "Patient.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.address",
      "target" : [{
        "code" : "Patient.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.telecom",
      "target" : [{
        "code" : "Patient.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName",
      "target" : [{
        "code" : "Patient.name:officialName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName",
      "target" : [{
        "code" : "Patient.name:usualName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.family",
      "target" : [{
        "code" : "Patient.name:officialName.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.family",
      "target" : [{
        "code" : "Patient.name:usualName.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.given",
      "target" : [{
        "code" : "Patient.name:officialName.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.given",
      "target" : [{
        "code" : "Patient.name:usualName.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:officialName.use",
      "target" : [{
        "code" : "Patient.name:officialName.use",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.name:usualName.use",
      "target" : [{
        "code" : "Patient.name:usualName.use",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.administrativeGender",
      "target" : [{
        "code" : "Patient.gender",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.dateOfBirth",
      "target" : [{
        "code" : "Patient.birthDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.deceased:boolean",
      "target" : [{
        "code" : "Patient.deceased[x]",
        "equivalence" : "equivalent",
        "comment" : "Valeur booléenne de deceased[x]."
      }]
    },
    {
      "code" : "FRLMPatient.deceased:dateTime",
      "target" : [{
        "code" : "Patient.deceased[x]",
        "equivalence" : "equivalent",
        "comment" : "Valeur dateTime de deceased[x]."
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth:boolean",
      "target" : [{
        "code" : "Patient.multipleBirth[x]",
        "equivalence" : "equivalent",
        "comment" : "Valeur booléenne de multipleBirth[x]."
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth:integer",
      "target" : [{
        "code" : "Patient.multipleBirth[x]",
        "equivalence" : "equivalent",
        "comment" : "Valeur integer de multipleBirth[x]."
      }]
    },
    {
      "code" : "FRLMPatient.birthPlace",
      "target" : [{
        "code" : "Patient.extension:birthPlace",
        "equivalence" : "equivalent",
        "comment" : "Patient.extension:birthPlace.value[FRCoreAddressProfile]"
      }]
    },
    {
      "code" : "FRLMPatient.contact",
      "target" : [{
        "code" : "Patient.contact",
        "equivalence" : "equivalent",
        "comment" : "Patient.contact.relationship:Role='GUARD'"
      }]
    },
    {
      "code" : "FRLMPatient.contact.address",
      "target" : [{
        "code" : "Patient.contact.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.telecom",
      "target" : [{
        "code" : "Patient.contact.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.name",
      "target" : [{
        "code" : "Patient.contact.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.contact.name.family",
      "target" : [{
        "code" : "Patient.contact.name",
        "equivalence" : "relatedto",
        "comment" : "Porté par le composant family de Patient.contact.name (HumanName), non détaillé dans la StructureDefinition."
      }]
    },
    {
      "code" : "FRLMPatient.contact.name.given",
      "target" : [{
        "code" : "Patient.contact.name",
        "equivalence" : "relatedto",
        "comment" : "Porté par le composant given de Patient.contact.name (HumanName), non détaillé dans la StructureDefinition."
      }]
    },
    {
      "code" : "FRLMPatient.contact.organization",
      "target" : [{
        "code" : "Patient.contact.organization",
        "equivalence" : "equivalent",
        "comment" : "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure représentant le patient."
      }]
    }]
  }]
}

```
