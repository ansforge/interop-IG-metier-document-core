# Mapping FRLMLegalAuthentication → FRCDALegalAuthenticator → Composition.attester - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMLegalAuthentication → FRCDALegalAuthenticator → Composition.attester 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMLegalAuthentication" et l'élément CDA "legalAuthenticator"
* Mapping 2 : entre le modèle métier "FRLMLegalAuthentication" et l'élément FHIR "Composition.attester"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLegalAuthenticationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLegalAuthenticationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T15:08:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMLegalAuthentication\\\" et l'élément CDA \\\"legalAuthenticator\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMLegalAuthentication\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLegalAuthentication",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-legal-authenticator",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLegalAuthentication",
      "target" : [{
        "code" : "LegalAuthenticator",
        "display" : "legalAuthenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.dateTime",
      "target" : [{
        "code" : "LegalAuthenticator.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:healthProfessional",
      "target" : [{
        "code" : "LegalAuthenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le responsable professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:patient",
      "target" : [{
        "code" : "LegalAuthenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le responsable patient/usager (document d'expression personnelle) est de type FRLMPatient, cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:device",
      "target" : [{
        "code" : "LegalAuthenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le responsable système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:organisation",
      "target" : [{
        "code" : "LegalAuthenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le responsable structure (ex : Dossier Pharmaceutique) est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLegalAuthentication",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLegalAuthentication",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.where(mode='legal')"
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.dateTime",
      "target" : [{
        "code" : "Composition.attester.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:healthProfessional",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:patient",
      "target" : [{
        "code" : "Composition.attester.party.Patient",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:device",
      "target" : [{
        "code" : "Composition.attester.party.Device",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    },
    {
      "code" : "FRLMLegalAuthentication.legalAuthenticator:organisation",
      "target" : [{
        "code" : "Composition.attester.party.Organization",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    }]
  }]
}

```
