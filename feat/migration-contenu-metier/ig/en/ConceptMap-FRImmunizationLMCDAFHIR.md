# Mapping FRLMVaccination → FRCDAVaccination → FRImmunizationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMVaccination → FRCDAVaccination → FRImmunizationDocument 

 
Mapping des éléments du modèle métier FRLMVaccination vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImmunizationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImmunizationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccination\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMVaccination vers le profil CDA FRCDAVaccination, puis vers le profil FHIR FRImmunizationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccination",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination",
    "element" : [{
      "code" : "FRLMVaccination",
      "target" : [{
        "code" : "FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.identifiant",
      "target" : [{
        "code" : "FRCDAVaccination.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.code",
      "target" : [{
        "code" : "FRCDAVaccination.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.description",
      "target" : [{
        "code" : "FRCDAVaccination.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.statut",
      "target" : [{
        "code" : "FRCDAVaccination.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.dateVaccination",
      "target" : [{
        "code" : "FRCDAVaccination.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.voieAadministration",
      "target" : [{
        "code" : "FRCDAVaccination.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.regionAnatomique",
      "target" : [{
        "code" : "FRCDAVaccination.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.doseVaccination",
      "target" : [{
        "code" : "FRCDAVaccination.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.vaccin",
      "target" : [{
        "code" : "FRCDAVaccination.consumable:FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.prescription",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.rangVaccination",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frRangDeLaVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.reaction",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.commentaire",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccination.DoseAntigene",
      "target" : [{
        "code" : "FRCDAVaccination.entryRelationship:frDoseAntigene",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccination",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-document",
    "element" : [{
      "code" : "FRCDAVaccination",
      "target" : [{
        "code" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.id",
      "target" : [{
        "code" : "FRImmunizationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.code",
      "target" : [{
        "code" : "FRImmunizationDocument.protocolApplied.series",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.text",
      "target" : [{
        "code" : "FRImmunizationDocument.vaccineCode.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.statusCode",
      "target" : [{
        "code" : "FRImmunizationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.effectiveTime",
      "target" : [{
        "code" : "FRImmunizationDocument.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.approachSiteCode",
      "target" : [{
        "code" : "FRImmunizationDocument.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.routeCode",
      "target" : [{
        "code" : "FRImmunizationDocument.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.doseQuantity",
      "target" : [{
        "code" : "FRImmunizationDocument.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.consumable:FRCDAProduitDeSante",
      "target" : [{
        "code" : "FRImmunizationDocument.vaccineCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.entryRelationship:frPrescription",
      "target" : [{
        "code" : "FRImmunizationDocument.extension:immunization-basedOn-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.entryRelationship:frRangDeLaVaccination",
      "target" : [{
        "code" : "FRImmunizationDocument.protocolApplied.doseNumberPositiveInt",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.entryRelationship:frProbleme",
      "target" : [{
        "code" : "FRImmunizationDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRImmunizationDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccination.entryRelationship:frDoseAntigene",
      "target" : [{
        "code" : "FRImmunizationDocument.extension:immunization-administeredProduct-r5",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
