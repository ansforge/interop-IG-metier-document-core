# Mapping FRLMHeaderDocument → FRCDAClinicalDocument → FrBundleDocument / FrCompositionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHeaderDocument → FRCDAClinicalDocument → FrBundleDocument / FrCompositionDocument 

 
Ce ConceptMap présente trois groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMHeaderDocument" et l'élément CDA "clinicalDocument"
* Mapping 2 : entre le modèle métier "FRLMHeaderDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre le modèle métier "FRLMHeaderDocument" et le profil FHIR "FrCompositionDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRHeaderDocumentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRHeaderDocumentLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
  "title" : "Mapping FRLMHeaderDocument → FRCDAClinicalDocument → FrBundleDocument / FrCompositionDocument",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-14T14:32:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente trois groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMHeaderDocument\\\" et l'élément CDA \\\"clinicalDocument\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMHeaderDocument\\\" et le profil FHIR \\\"FrBundleDocument\\\"\n - Mapping 3 : entre le modèle métier \\\"FRLMHeaderDocument\\\" et le profil FHIR \\\"FrCompositionDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-header-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
    "element" : [{
      "code" : "FRLMHeaderDocument",
      "target" : [{
        "code" : "ClinicalDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.identifier:document",
      "target" : [{
        "code" : "ClinicalDocument.id",
        "equivalence" : "equivalent",
        "comment" : "Identifiant unique du document."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.identifier:versionSet",
      "target" : [{
        "code" : "ClinicalDocument.setId",
        "equivalence" : "equivalent",
        "comment" : "Identifiant du lot de versions du document."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.documentType",
      "target" : [{
        "code" : "ClinicalDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.documentTitle",
      "target" : [{
        "code" : "ClinicalDocument.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.date",
      "target" : [{
        "code" : "ClinicalDocument.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.confidentiality",
      "target" : [{
        "code" : "ClinicalDocument.confidentialityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.language",
      "target" : [{
        "code" : "ClinicalDocument.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.version",
      "target" : [{
        "code" : "ClinicalDocument.versionNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.status",
      "target" : [{
        "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.eventType",
      "target" : [{
        "code" : "ClinicalDocument.documentationOf",
        "equivalence" : "equivalent",
        "comment" : "eventType ne porte plus que le(s) code(s) d'évènement ; les autres informations (dates, exécutant) sont désormais portées par l'élément encounter (FRLMEncounter), cf. FREncounterLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.subject",
      "target" : [{
        "code" : "ClinicalDocument.recordTarget",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author",
      "target" : [{
        "code" : "ClinicalDocument.author",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRAuthorLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.dataEnterer",
      "target" : [{
        "code" : "ClinicalDocument.dataEnterer",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRDataEntererLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.informant",
      "target" : [{
        "code" : "ClinicalDocument.informant",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRInformantLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.custodian",
      "target" : [{
        "code" : "ClinicalDocument.custodian",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRCustodianLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.intendedRecipient",
      "target" : [{
        "code" : "ClinicalDocument.informationRecipient",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRIntendedRecipientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.legalAuthentication",
      "target" : [{
        "code" : "ClinicalDocument.legalAuthenticator",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRLegalAuthenticationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.attester",
      "target" : [{
        "code" : "ClinicalDocument.authenticator",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRAttesterLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.participant",
      "target" : [{
        "code" : "ClinicalDocument.participant",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRParticipantHeaderLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.order",
      "target" : [{
        "code" : "ClinicalDocument.inFulfillmentOf",
        "equivalence" : "equivalent",
        "comment" : "Cf. FROrderLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.consent",
      "target" : [{
        "code" : "ClinicalDocument.authorization",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRConsentLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.encounter",
      "target" : [{
        "code" : "ClinicalDocument.componentOf",
        "equivalence" : "equivalent",
        "comment" : "L'élément encounter est de type FRLMEncounter, cf. FREncounterLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-header-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-bundle-document",
    "element" : [{
      "code" : "FRLMHeaderDocument.identifier:document",
      "target" : [{
        "code" : "Bundle.identifier",
        "equivalence" : "equivalent",
        "comment" : "Identifiant unique du document."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-header-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMHeaderDocument.documentType",
      "target" : [{
        "code" : "Composition.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.documentTitle",
      "target" : [{
        "code" : "Composition.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.date",
      "target" : [{
        "code" : "Composition.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.confidentiality",
      "target" : [{
        "code" : "Composition.confidentiality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.language",
      "target" : [{
        "code" : "Composition.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.identifier:versionSet",
      "target" : [{
        "code" : "Composition.identifier",
        "equivalence" : "equivalent",
        "comment" : "Identifiant du lot de versions du document."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.version",
      "target" : [{
        "code" : "Composition.extension:R5-Composition-version",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.status",
      "target" : [{
        "code" : "Composition.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.subject",
      "target" : [{
        "code" : "Composition.subject",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRAuthorLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.dataEnterer",
      "target" : [{
        "code" : "Composition.extension:data-enterer",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension — cf. FRDataEntererLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.informant",
      "target" : [{
        "code" : "Composition.extension:informant",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension — cf. FRInformantLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.custodian",
      "target" : [{
        "code" : "Composition.custodian",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRCustodianLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.intendedRecipient",
      "target" : [{
        "code" : "Composition.extension:information-recipient",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension — cf. FRIntendedRecipientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.legalAuthentication",
      "target" : [{
        "code" : "Composition.attester:legal_attester",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRLegalAuthenticationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.attester",
      "target" : [{
        "code" : "Composition.attester:professional_attester",
        "equivalence" : "equivalent",
        "comment" : "Cf. FRAttesterLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.participant",
      "target" : [{
        "code" : "Composition.extension:participant",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension — cf. FRParticipantHeaderLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.order",
      "target" : [{
        "code" : "Composition.extension:basedOn",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/StructureDefinition/event-basedOn — cf. FROrderLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.eventType",
      "target" : [{
        "code" : "Composition.event",
        "equivalence" : "equivalent",
        "comment" : "eventType ne porte plus que le(s) code(s) d'évènement ; les autres informations (dates, exécutant) sont désormais portées par Composition.encounter, cf. FREncounterLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.consent",
      "target" : [{
        "code" : "Composition.extension:consent",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension — cf. FRConsentLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.encounter",
      "target" : [{
        "code" : "Composition.encounter",
        "equivalence" : "equivalent",
        "comment" : "Composition.encounter.resolve().ofType(Encounter) — https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document, cf. FREncounterLMCDAFHIR."
      }]
    }]
  }]
}

```
