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
  "name" : "FRImmunisationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccination\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-vaccination",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImmunisation",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.identifier",
      "target" : [{
        "code" : "SubstanceAdministration.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.status",
      "target" : [{
        "code" : "SubstanceAdministration.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "wider",
        "comment" : "effectiveTime n'est pas décomposé en low/high dans ce profil ; startDate correspond à la borne basse de l'intervalle."
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "wider",
        "comment" : "effectiveTime n'est pas décomposé en low/high dans ce profil ; endDate correspond à la borne haute de l'intervalle."
      }]
    },
    {
      "code" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.administeredProduct",
      "target" : [{
        "code" : "SubstanceAdministration.consumable",
        "display" : "FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.route",
      "target" : [{
        "code" : "SubstanceAdministration.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.site",
      "target" : [{
        "code" : "SubstanceAdministration.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseQuantity",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseNumber",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frRangDeLaVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.note",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.prescription",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reaction",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frProbleme",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImmunisation",
      "target" : [{
        "code" : "Immunization",
        "display" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.identifier",
      "target" : [{
        "code" : "Immunization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.header.status",
      "target" : [{
        "code" : "Immunization.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation",
      "target" : [{
        "code" : "Immunization.occurrence[x]",
        "equivalence" : "wider",
        "comment" : "occurrence[x] est restreint à dateTime dans ce profil (pas de Period)."
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "target" : [{
        "code" : "Immunization.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "occurrence[x] est restreint à dateTime dans ce profil ; aucune date de fin ne peut être portée."
      }]
    },
    {
      "code" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "target" : [{
        "code" : "Immunization.protocolApplied.targetDisease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.administeredProduct",
      "target" : [{
        "code" : "Immunization.vaccineCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.route",
      "target" : [{
        "code" : "Immunization.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.site",
      "target" : [{
        "code" : "Immunization.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseQuantity",
      "target" : [{
        "code" : "Immunization.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.doseNumber",
      "target" : [{
        "code" : "Immunization.protocolApplied.doseNumber[x]:doseNumberPositiveInt",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.note",
      "target" : [{
        "code" : "Immunization.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.prescription",
      "target" : [{
        "code" : "Immunization.extension:basedOnRequestR5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reaction",
      "target" : [{
        "code" : "Immunization.reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisation.reasonCode",
      "target" : [{
        "code" : "Immunization.reasonCode",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
