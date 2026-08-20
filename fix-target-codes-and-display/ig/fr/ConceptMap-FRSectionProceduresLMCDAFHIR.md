# Mapping FRLMProcedures → FRCDAHistoriqueDesActes / FRLMProcedures → FRCompositionDocument.section:sectionProceduresHx - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProcedures → FRCDAHistoriqueDesActes / FRLMProcedures → FRCompositionDocument.section:sectionProceduresHx 

 
Mapping des éléments du modèle métier FRLMProcedures vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:sectionProceduresHx. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionProceduresLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionProceduresLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique des actes\"",
  "status" : "draft",
  "date" : "2026-08-20T08:53:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMProcedures vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:sectionProceduresHx.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-actes",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedures",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAHistoriqueDesActes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.entry.procedure:FRLMProcedure",
      "target" : [{
        "code" : "Section.entry:FRCDAActe",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedures",
      "target" : [{
        "code" : "Composition.section:sectionProceduresHx",
        "display" : "FRCompositionDocument.section:sectionProceduresHx",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionProceduresHx.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionProceduresHx.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.description",
      "target" : [{
        "code" : "Composition.section:sectionProceduresHx.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedures.entry.procedure:FRLMProcedure",
      "target" : [{
        "code" : "Composition.section:sectionProceduresHx.entry:FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
