# Mapping FRLMResultatsEntry → FRCDAResultats → FRDiagnosticReportDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatsEntry → FRCDAResultats → FRDiagnosticReportDocument 

 
Mapping des éléments du modèle métier FRLMResultatsEntry vers le profil CDA FRCDAResultats, puis vers le profil FHIR FRDiagnosticReportDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultats classés par type d’examens (BIO, IMG, etc…)\"",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMResultatsEntry vers le profil CDA FRCDAResultats, puis vers le profil FHIR FRDiagnosticReportDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-entry",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats",
    "element" : [{
      "code" : "FRLMResultatsEntry",
      "target" : [{
        "code" : "FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.identifiant",
      "target" : [{
        "code" : "FRCDAResultats.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.code",
      "target" : [{
        "code" : "FRCDAResultats.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.statut",
      "target" : [{
        "code" : "FRCDAResultats.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.date",
      "target" : [{
        "code" : "FRCDAResultats.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.executant",
      "target" : [{
        "code" : "FRCDAResultats.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.auteur",
      "target" : [{
        "code" : "FRCDAResultats.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsEntry.resultat",
      "target" : [{
        "code" : "FRCDAResultats.component:frResultat",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-document",
    "element" : [{
      "code" : "FRCDAResultats.id",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.code",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.statusCode",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.effectiveTime",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.performer",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.author",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.resultsInterpreter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.component:frResultat",
      "target" : [{
        "code" : "FRDiagnosticReportDocument.result:FRObservationResultDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
