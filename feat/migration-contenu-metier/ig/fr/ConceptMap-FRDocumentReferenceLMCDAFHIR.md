# Mapping FRLMDocumentAttache → FRCDADocumentAttache → FRDocumentReferenceDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDocumentAttache → FRCDADocumentAttache → FRDocumentReferenceDocument 

 
Mapping des éléments du modèle métier FRLMDocumentAttache vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDocumentReferenceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDocumentReferenceLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Document Referencé\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDocumentAttache vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-attache",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-attache",
    "element" : [{
      "code" : "FRLMDocumentAttache",
      "target" : [{
        "code" : "FRCDADocumentAttache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.identifiant",
      "target" : [{
        "code" : "FRCDADocumentAttache.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.code",
      "target" : [{
        "code" : "FRCDADocumentAttache.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.statut",
      "target" : [{
        "code" : "FRCDADocumentAttache.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.date",
      "target" : [{
        "code" : "FRCDADocumentAttache.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.typeDocumentAttache",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frTypeDocumentAttache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.documentAttache",
      "target" : [{
        "code" : "FRCDADocumentAttache.component.observationMedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.documentAttache.observationMedia.identifiant",
      "target" : [{
        "code" : "FRCDADocumentAttache.component.observationMedia.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentAttache.documentAttache.observationMedia.documentAttacheEncode",
      "target" : [{
        "code" : "FRCDADocumentAttache.component.observationMedia.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-attache",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-document-reference-document",
    "element" : [{
      "code" : "FRCDADocumentAttache",
      "target" : [{
        "code" : "FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.id",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.code",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.statusCode",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.docStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.effectiveTime",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.component:frTypeDocumentAttache",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.component.observationMedia",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.component.observationMedia.id",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentAttache.component.observationMedia.value",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.data",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
