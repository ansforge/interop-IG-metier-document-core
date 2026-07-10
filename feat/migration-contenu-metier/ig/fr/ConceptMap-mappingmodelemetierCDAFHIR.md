# Mapping Métier/CDA/FHIR : Entête d'un document - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Entête d'un document 

 
Ce ConceptMap présente trois groupes de mapping : 
* Mapping 1 : entre le modèle métier "EnteteDocument" et l'élément CDA "clinicalDocument"
* Mapping 2 : entre l'élément CDA "clinicalDocument" et le profil FHIR "FrBundleDocument"
* Mapping 3 : entre l'élément CDA "clinicalDocument" et le profil FHIR "FrCompositionDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingmodelemetierCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingmodelemetierCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
  "title" : "Mapping Métier/CDA/FHIR  : Entête d'un document",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente trois groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"EnteteDocument\\\" et l'élément CDA \\\"clinicalDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrBundleDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"clinicalDocument\\\" et le profil FHIR \\\"FrCompositionDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-entete-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
    "element" : [{
      "code" : "FRLMEnteteDocument",
      "target" : [{
        "code" : "ClinicalDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.identifiantUniqueDocument",
      "target" : [{
        "code" : "ClinicalDocument.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.modeleDocument",
      "target" : [{
        "code" : "ClinicalDocument.templateId",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.typeDocument",
      "target" : [{
        "code" : "ClinicalDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.titreDocument",
      "target" : [{
        "code" : "ClinicalDocument.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.dateDeCreationDocument",
      "target" : [{
        "code" : "ClinicalDocument.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.niveauConfidentialiteDocument",
      "target" : [{
        "code" : "ClinicalDocument.confidentialityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.languePrincipaleDocument",
      "target" : [{
        "code" : "ClinicalDocument.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.identifiantLotDeVersionsDocument",
      "target" : [{
        "code" : "ClinicalDocument.setId",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.versionDocument",
      "target" : [{
        "code" : "ClinicalDocument.versionNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.StatutDocument",
      "target" : [{
        "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.patient",
      "target" : [{
        "code" : "ClinicalDocument.recordTarget",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.auteur",
      "target" : [{
        "code" : "ClinicalDocument.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.operateurSaisie",
      "target" : [{
        "code" : "ClinicalDocument.dataEnterer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.informateur",
      "target" : [{
        "code" : "ClinicalDocument.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.structureConservation",
      "target" : [{
        "code" : "ClinicalDocument.custodian",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.destinataire",
      "target" : [{
        "code" : "ClinicalDocument.informationRecipient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.responsable",
      "target" : [{
        "code" : "ClinicalDocument.legalAuthenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.validateur",
      "target" : [{
        "code" : "ClinicalDocument.authenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.participant",
      "target" : [{
        "code" : "ClinicalDocument.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.prescription",
      "target" : [{
        "code" : "ClinicalDocument.inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.evenement",
      "target" : [{
        "code" : "ClinicalDocument.documentationOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.documentDeReference",
      "target" : [{
        "code" : "ClinicalDocument.relatedDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.consentementAssocie",
      "target" : [{
        "code" : "ClinicalDocument.authorization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnteteDocument.priseEncharge",
      "target" : [{
        "code" : "ClinicalDocument.componentOf",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-bundle-document",
    "element" : [{
      "code" : "ClinicalDocument.id",
      "target" : [{
        "code" : "Bundle.identifier",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-clinical-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "ClinicalDocument.templateId",
      "target" : [{
        "code" : "Composition.meta.profile",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.code",
      "target" : [{
        "code" : "Composition.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.title",
      "target" : [{
        "code" : "Composition.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.effectiveTime",
      "target" : [{
        "code" : "Composition.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.confidentialityCode",
      "target" : [{
        "code" : "Composition.confidentiality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.languageCode",
      "target" : [{
        "code" : "Composition.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.setId",
      "target" : [{
        "code" : "Composition.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.versionNumber",
      "target" : [{
        "code" : "Composition.extension:R5-Composition-version",
        "equivalence" : "equivalent",
        "comment" : " http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version"
      }]
    },
    {
      "code" : "ClinicalDocument.documentationOf.serviceEvent.lab:statusCode",
      "target" : [{
        "code" : "Composition.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.recordTarget",
      "target" : [{
        "code" : "Composition.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.author",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "ClinicalDocument.dataEnterer",
      "target" : [{
        "code" : "Composition.extension:data-enterer",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension"
      }]
    },
    {
      "code" : "ClinicalDocument.informant",
      "target" : [{
        "code" : "Composition.extension:informant",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension"
      }]
    },
    {
      "code" : "ClinicalDocument.custodian",
      "target" : [{
        "code" : "Composition.custodian",
        "equivalence" : "equivalent",
        "comment" : "Composition.custodian.resolve().ofType(Organization)"
      }]
    },
    {
      "code" : "ClinicalDocument.informationRecipient",
      "target" : [{
        "code" : "Composition.extension:informationRecipient",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension"
      }]
    },
    {
      "code" : "ClinicalDocument.legalAuthenticator",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.mode = 'legal'"
      }]
    },
    {
      "code" : "ClinicalDocument.authenticator",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.mode = 'professional'"
      }]
    },
    {
      "code" : "ClinicalDocument.participant",
      "target" : [{
        "code" : "Composition.extension:participant",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension"
      }]
    },
    {
      "code" : "ClinicalDocument.inFulfillmentOf",
      "target" : [{
        "code" : "Composition.extension:order",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/OrderExtension"
      }]
    },
    {
      "code" : "ClinicalDocument.documentationOf",
      "target" : [{
        "code" : "Composition.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.relatedDocument",
      "target" : [{
        "code" : "Composition.relatesTo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ClinicalDocument.authorization",
      "target" : [{
        "code" : "Composition.extension:consent",
        "equivalence" : "equivalent",
        "comment" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension"
      }]
    },
    {
      "code" : "ClinicalDocument.componentOf",
      "target" : [{
        "code" : "Composition.encounter",
        "equivalence" : "equivalent",
        "comment" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document"
      }]
    }]
  }]
}

```
