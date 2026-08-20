# Mapping FRLMIntendedRecipient → FRCDAInformationRecipient → InformationRecipientExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMIntendedRecipient → FRCDAInformationRecipient → InformationRecipientExtension 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMIntendedRecipient" et l'élément CDA "informationRecipient"
* Mapping 2 : entre le modèle métier "FRLMIntendedRecipient" et l'extension FHIR "InformationRecipientExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRIntendedRecipientLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRIntendedRecipientLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMIntendedRecipient\\\" et l'élément CDA \\\"informationRecipient\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMIntendedRecipient\\\" et l'extension FHIR \\\"InformationRecipientExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIntendedRecipient",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-information-recipient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMIntendedRecipient",
      "target" : [{
        "code" : "InformationRecipient",
        "display" : "informationRecipient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:healthProfessional",
      "target" : [{
        "code" : "InformationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "Le destinataire professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:organisation",
      "target" : [{
        "code" : "InformationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "Le destinataire structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:patient",
      "target" : [{
        "code" : "InformationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "Le destinataire patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:relatedPerson",
      "target" : [{
        "code" : "InformationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "Le destinataire personne liée au patient est de type FRLMRelatedPerson, cf. FRRelatedPersonLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:device",
      "target" : [{
        "code" : "InformationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "Le destinataire système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIntendedRecipient",
    "sourceVersion" : "0.1.0",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "FRLMIntendedRecipient",
      "target" : [{
        "code" : "Extension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:healthProfessional",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:organisation",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:patient",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:relatedPerson",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(RelatedPerson) — cf. FRRelatedPersonLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMIntendedRecipient.intendedRecipient:device",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    }]
  }]
}

```
