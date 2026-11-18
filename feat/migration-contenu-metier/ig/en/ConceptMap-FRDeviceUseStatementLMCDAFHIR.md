# Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceUseStatement - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceUseStatement 

 
Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDeviceUseStatementLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDeviceUseStatementLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le\nprofil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositif-medical-entree",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical",
    "element" : [{
      "code" : "FRLMDispositifMedicalEntree",
      "target" : [{
        "code" : "FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.identifiant",
      "target" : [{
        "code" : "FRCDADispositifMedical.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.date",
      "target" : [{
        "code" : "FRCDADispositifMedical.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.dispensateur",
      "target" : [{
        "code" : "FRCDADispositifMedical.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.dispositifMedical",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.affectionLongueDuree",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.accidentTravail",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.prevention",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-use-statement-document",
    "element" : [{
      "code" : "FRCDADispositifMedical",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.id",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.effectiveTime",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.timing[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.performer",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.source.extension:performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.participant",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:EnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:EnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:EnRapportAvecLaPrevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frNonRemboursable",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.extension:notCovered",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
