# Mapping FRLMVaccinRecommande → FRCDAVaccinRecommande → FRImmunizationRecommendationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMVaccinRecommande → FRCDAVaccinRecommande → FRImmunizationRecommendationDocument 

 
Mapping des éléments du modèle métier FRLMVaccinRecommande vers le profil CDA FRCDAVaccinRecommande, puis vers le profil FHIR FRImmunizationRecommendationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImmunizationRecommendationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImmunizationRecommendationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccin recommandé\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMVaccinRecommande vers le profil CDA FRCDAVaccinRecommande, puis vers le profil FHIR FRImmunizationRecommendationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccin-recommande",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccin-recommande",
    "element" : [{
      "code" : "FRLMVaccinRecommande",
      "target" : [{
        "code" : "FRCDAVaccinRecommande",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.identifiantVaccinRecommande",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.codeVaccinRecommande",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.descriptionNarrativeVaccinRecommande",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.statutVaccinRecommande",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.periodeVaccination",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.voieAdministration",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.regionAnatomique",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.doseAdministree",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.vaccin",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.prescription",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.rangVaccination",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.entryRelationship:frRangDeLaVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinRecommande.commentaire",
      "target" : [{
        "code" : "FRCDAVaccinRecommande.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccin-recommande",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-immunization-recommendation-document",
    "element" : [{
      "code" : "FRCDAVaccinRecommande",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.id",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.code",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.vaccineCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.text",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.vaccineCode.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.statusCode",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.forecastStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.effectiveTime",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.dateCriterion.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.routeCode",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.supportingImmunization:FRImmunizationDocument.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.approachSiteCode",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.supportingImmunization:FRImmunizationDocument.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.vaccineCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.consumable.FRCDAProduitDeSante.code.translation",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.vaccineCode.coding:translation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.entryRelationship:frPrescription",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.supportingPatientInformation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.entryRelationship:frRangDeLaVaccination",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.recommendation.seriesDosesPositiveInt",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinRecommande.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRImmunizationRecommendationDocument.description",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
