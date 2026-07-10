# Mapping Métier/CDA/FHIR : "Prise en charge" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Prise en charge" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prise en charge" et l'élément CDA "componentOf"
* Mapping 2 : entre l'élément CDA "componentOf" et l'élément FHIR "Composition.encounter(Encounter)"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPriseEnchargeCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingPriseEnchargeCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Prise en charge\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Prise en charge\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prise en charge\\\" et l'élément CDA \\\"componentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"componentOf\\\" et l'élément FHIR \\\"Composition.encounter(Encounter)\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prise-en-charge",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of",
    "element" : [{
      "code" : "FRLMPriseEncharge",
      "target" : [{
        "code" : "componentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.identifiantPriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.typePriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.dateDebutFinPriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.typeSortie",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.dischargeDispositionCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.responsablePriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.responsibleParty.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément responsablePriseEnCharge est de type PersonneStructure."
      }]
    },
    {
      "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.encounterParticipant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.typeParticipation",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.encounterParticipant@typeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.encounterParticipant.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.encounterParticipant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément personneImpliqueePriseEnCharge est de type PersonneStructure. "
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location.healthcareFacility",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.secteurActivite.categorieEtablissement",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code.translation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.nomStructure",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPriseEncharge.lieuPriseEnCharge.structure.adresse",
      "target" : [{
        "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.addr",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-component-of",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document",
    "element" : [{
      "code" : "componentOf",
      "target" : [{
        "code" : "Composition.encounter.Encounter",
        "equivalence" : "equivalent",
        "comment" : "Composition.encounter.resolve().ofType(Encounter)"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.id",
      "target" : [{
        "code" : "Encounter.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.code",
      "target" : [{
        "code" : "Encounter.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.effectiveTime",
      "target" : [{
        "code" : "Encounter.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.dischargeDispositionCode",
      "target" : [{
        "code" : "Encounter.hospitalization.dischargeDisposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.responsibleParty.assignedEntity",
      "target" : [{
        "code" : "Encounter.participant.type=\"DIS\".individual",
        "equivalence" : "equivalent",
        "comment" : "Encounter.participant.individual.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.encounterParticipant",
      "target" : [{
        "code" : "Encounter.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.encounterParticipant@typeCode",
      "target" : [{
        "code" : "Encounter.participant.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.encounterParticipant.time",
      "target" : [{
        "code" : "Encounter.participant.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.encounterParticipant.assignedEntity",
      "target" : [{
        "code" : "Encounter.participant.individual",
        "equivalence" : "equivalent",
        "comment" : "Encounter.participant.individual.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.location",
      "target" : [{
        "code" : "Encounter.location",
        "equivalence" : "equivalent",
        "comment" : "Encounter.location.resolve().ofType(Location)"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.location.healthcareFacility",
      "target" : [{
        "code" : "Encounter.location.Location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.location.healthcareFacility.code",
      "target" : [{
        "code" : "Encounter.location.Location.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.name",
      "target" : [{
        "code" : "Encounter.location.Location.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "componentOf.encompassingEncounter.location.healthcareFacility.location.addr",
      "target" : [{
        "code" : "Encounter.location.Location.address",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
