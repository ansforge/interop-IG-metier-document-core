# Mapping Métier/CDA/FHIR : "Destinataire prévu" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Destinataire prévu" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "destinataire" et l'élément CDA "informationRecipient"
* Mapping 2 : entre l'élément CDA "informationRecipient" et l'extension FHIR "InformationRecipientExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingDestinatairePrevuCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingDestinatairePrevuCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Destinataire prévu\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"destinataire\\\" et l'élément CDA \\\"informationRecipient\\\"\n - Mapping 2 : entre l'élément CDA \\\"informationRecipient\\\" et l'extension FHIR \\\"InformationRecipientExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-destinataire-prevu",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient",
    "element" : [{
      "code" : "FRLMDestinatairePrevu",
      "target" : [{
        "code" : "informationRecipient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDestinatairePrevu.destinataire",
      "target" : [{
        "code" : "informationRecipient.intendedRecipient",
        "equivalence" : "equivalent",
        "comment" : "L'élément destinataire est de type PersonneStructure."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-information-recipient",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "informationRecipient",
      "target" : [{
        "code" : "extension:InformationRecipientExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient",
      "target" : [{
        "code" : "extension:InformationRecipientExtension.extension:party.PractitionerRole",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.id",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.addr",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.telecom",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.name",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.name.family",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.name.given",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.name.prefix",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.name.suffix",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Organization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.id",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.name",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.telecom",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informationRecipient.intendedRecipient.informationRecipient.receivedOrganization.addr",
      "target" : [{
        "code" : "extension:party.PractitionerRole.Organization.address",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
