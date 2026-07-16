# Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDispositifMedicalEntree → FRCDADispositifMedical → FRDeviceRequestDocument 

 
Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDeviceRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDeviceRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de dispositif médical\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDispositifMedicalEntree vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceRequestDocument.",
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
      "code" : "FRLMDispositifMedicalEntree.description",
      "target" : [{
        "code" : "FRCDADispositifMedical.text",
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
      "code" : "FRLMDispositifMedicalEntree.renouvellement",
      "target" : [{
        "code" : "FRCDADispositifMedical.repeatNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.duree",
      "target" : [{
        "code" : "FRCDADispositifMedical.expectedUseTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.quantite",
      "target" : [{
        "code" : "FRCDADispositifMedical.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifMedicalEntree.auteur",
      "target" : [{
        "code" : "FRCDADispositifMedical.author",
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
    },
    {
      "code" : "FRLMDispositifMedicalEntree.nonRemboursable",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frNonRemboursable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-request-document",
    "element" : [{
      "code" : "FRCDADispositifMedical",
      "target" : [{
        "code" : "FRDeviceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.id",
      "target" : [{
        "code" : "FRDeviceRequestDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.text",
      "target" : [{
        "code" : "FRDeviceRequestDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.effectiveTime",
      "target" : [{
        "code" : "FRDeviceRequestDocument.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.repeatNumber",
      "target" : [{
        "code" : "FRDeviceRequestDocument.occurrenceTiming.repeat.count",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.expectedUseTime",
      "target" : [{
        "code" : "FRDeviceRequestDocument.occurrencePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.quantity",
      "target" : [{
        "code" : "FRDeviceRequestDocument.parameter.valueQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.author",
      "target" : [{
        "code" : "FRDeviceRequestDocument.requester.extension:prescripteur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.participant",
      "target" : [{
        "code" : "FRDeviceRequestDocument.codeReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD",
      "target" : [{
        "code" : "FRDeviceRequestDocument.reasonReference:EnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRDeviceRequestDocument.reasonReference:EnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention",
      "target" : [{
        "code" : "FRDeviceRequestDocument.reasonReference:EnRapportAvecLaPrevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifMedical.entryRelationship:frNonRemboursable",
      "target" : [{
        "code" : "FRDeviceRequestDocument.extension:notCovered",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
