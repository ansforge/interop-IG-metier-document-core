# Mapping FRLMImmunisation → FRCDAVaccination / FRLMImmunisation → FRImmunizationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMImmunisation → FRCDAVaccination / FRLMImmunisation → FRImmunizationDocument 

 
Mapping des éléments du modèle métier FRLMImmunisation vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImmunisationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImmunisationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccination\"",
  "status" : "draft",
  "date" : "2026-08-05T13:43:59+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMImmunisation vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination",
    "element" : [{
      "code" : "FRLMImmunisation",
      "target" : [{
        "code" : "FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.identifiant",
      "target" : [{
        "code" : "FRCDAVaccination.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.status",
      "target" : [{
        "code" : "FRCDAVaccination.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation",
      "target" : [{
        "code" : "FRCDAVaccination.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "target" : [{
        "code" : "FRCDAVaccination.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "target" : [{
        "code" : "FRCDAVaccination.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.administeredProduct",
      "target" : [{
        "code" : "FRCDAVaccination.consumable:FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.route",
      "target" : [{
        "code" : "FRCDAVaccination.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.site",
      "target" : [{
        "code" : "FRCDAVaccination.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseQuantity",
      "target" : [{
        "code" : "FRCDAVaccination.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseNumber",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frRangDeLaVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.note",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.prescription",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reaction",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reasonCode",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance CDA explicite unique pour reasonCode dans ce profil CDA de vaccination."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-document",
    "element" : [{
      "code" : "FRLMImmunisation",
      "target" : [{
        "code" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.identifiant",
      "target" : [{
        "code" : "FRImmunizationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.status",
      "target" : [{
        "code" : "FRImmunizationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation",
      "target" : [{
        "code" : "FRImmunizationDocument.occurrencePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "target" : [{
        "code" : "FRImmunizationDocument.occurrencePeriod.start",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "target" : [{
        "code" : "FRImmunizationDocument.occurrencePeriod.end",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "target" : [{
        "code" : "FRImmunizationDocument.protocolApplied.targetDisease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.administeredProduct",
      "target" : [{
        "code" : "FRImmunizationDocument.vaccineCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.route",
      "target" : [{
        "code" : "FRImmunizationDocument.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.site",
      "target" : [{
        "code" : "FRImmunizationDocument.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseQuantity",
      "target" : [{
        "code" : "FRImmunizationDocument.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseNumber",
      "target" : [{
        "code" : "FRImmunizationDocument.protocolApplied.doseNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.note",
      "target" : [{
        "code" : "FRImmunizationDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.prescription",
      "target" : [{
        "code" : "FRImmunizationDocument.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reaction",
      "target" : [{
        "code" : "FRImmunizationDocument.reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reasonCode",
      "target" : [{
        "code" : "FRImmunizationDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
