# Mapping FRLMPatient → FRCDARecordTarget → FRPatientINSDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPatient → FRCDARecordTarget → FRPatientINSDocument 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMPatient" et l'élément CDA "recordTarget"
* Mapping 2 : entre le modèle métier "FRLMPatient" et le profil FHIR "FRPatientINSDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPatientLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPatientLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRPatientLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Patient/Usager\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMPatient\\\" et l'élément CDA \\\"recordTarget\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMPatient\\\" et le profil FHIR \\\"FRPatientINSDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-record-target",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient",
      "target" : [{
        "code" : "RecordTarget",
        "display" : "recordTarget",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient-role",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient.identifier",
      "target" : [{
        "code" : "PatientRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.address",
      "target" : [{
        "code" : "PatientRole.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.telecom",
      "target" : [{
        "code" : "PatientRole.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "Patient.name",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHumanName.use",
      "target" : [{
        "code" : "Patient.name.use",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.family",
      "target" : [{
        "code" : "Patient.name.item.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.given",
      "target" : [{
        "code" : "Patient.name.item.given",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-patient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient.administrativeGender",
      "target" : [{
        "code" : "Patient.administrativeGenderCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.dateOfBirth",
      "target" : [{
        "code" : "Patient.birthTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatient.deceased[x]",
      "target" : [{
        "code" : "Patient.sdtcDeceasedInd",
        "equivalence" : "equivalent",
        "comment" : "Cas où deceased[x] est de type boolean."
      }]
    },
    {
      "code" : "FRLMPatient.deceased[x]",
      "target" : [{
        "code" : "Patient.sdtcDeceasedTime",
        "equivalence" : "equivalent",
        "comment" : "Cas où deceased[x] est de type dateTime."
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth[x]",
      "target" : [{
        "code" : "Patient.sdtcMultipleBirthInd",
        "equivalence" : "equivalent",
        "comment" : "Cas où multipleBirth[x] est de type boolean."
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth[x]",
      "target" : [{
        "code" : "Patient.sdtcMultipleBirthOrderNumber",
        "equivalence" : "equivalent",
        "comment" : "Cas où multipleBirth[x] est de type integer."
      }]
    },
    {
      "code" : "FRLMPatient.birthPlace",
      "target" : [{
        "code" : "Patient.birthplace",
        "equivalence" : "equivalent",
        "comment" : "FRLMPatient.birthPlace est une Address simple ; nom du lieu, adresse et code officiel géographique sont portés par les composantes standard de cette adresse (text, line, city, country, etc.)."
      }]
    },
    {
      "code" : "FRLMPatient.contact",
      "target" : [{
        "code" : "Patient.guardian",
        "equivalence" : "equivalent",
        "comment" : "Patient.guardian (type CDA Guardian) n'est pas décomposé/profilé : adresse, téléphone, nom et organisation du représentant y sont tous portés globalement, sans champ dédié séparé."
      }]
    },
    {
      "code" : "FRLMPatient.contact.address",
      "target" : [{
        "code" : "Patient.guardian",
        "equivalence" : "wider",
        "comment" : "Adresse du représentant ; portée globalement par Patient.guardian, non décomposée."
      }]
    },
    {
      "code" : "FRLMPatient.contact.telecom",
      "target" : [{
        "code" : "Patient.guardian",
        "equivalence" : "wider",
        "comment" : "Téléphone du représentant ; porté globalement par Patient.guardian, non décomposé."
      }]
    },
    {
      "code" : "FRLMPatient.contact.name",
      "target" : [{
        "code" : "Patient.guardian",
        "equivalence" : "wider",
        "comment" : "Nom du représentant ; porté globalement par Patient.guardian, non décomposé."
      }]
    },
    {
      "code" : "FRLMPatient.contact.organization",
      "target" : [{
        "code" : "Patient.guardian",
        "equivalence" : "wider",
        "comment" : "Organisation du représentant ; portée globalement par Patient.guardian, non décomposée. Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatient",
      "target" : [{
        "code" : "Patient",
        "display" : "FRPatientINSDocument",
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
      "code" : "FRLMPatient.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "Patient.name:officialName",
        "equivalence" : "equivalent",
        "comment" : "Le modèle métier ne porte qu'un seul nom (1..1) ; utilisé comme nom de naissance."
      }]
    },
    {
      "code" : "FRLMPatient.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "Patient.name:usualName",
        "equivalence" : "equivalent",
        "comment" : "Le modèle métier ne porte qu'un seul nom (1..1) ; utilisé comme nom usuel."
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
      "code" : "FRLMPatient.deceased[x]",
      "target" : [{
        "code" : "Patient.deceased[x]",
        "equivalence" : "equivalent",
        "comment" : "deceased[x] est de type boolean ou dateTime des deux côtés."
      }]
    },
    {
      "code" : "FRLMPatient.multipleBirth[x]",
      "target" : [{
        "code" : "Patient.multipleBirth[x]",
        "equivalence" : "equivalent",
        "comment" : "multipleBirth[x] est de type boolean ou integer des deux côtés."
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
