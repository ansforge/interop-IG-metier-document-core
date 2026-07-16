# Mapping FRLMTraitementPrescrit → FRCDATraitementPrescrit → FRMedicationRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementPrescrit → FRCDATraitementPrescrit → FRMedicationRequestDocument 

 
Mapping des éléments du modèle métier FRLMTraitementPrescrit vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Traitement prescrit",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMTraitementPrescrit vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-prescrit",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit",
    "element" : [{
      "code" : "FRLMTraitementPrescrit",
      "target" : [{
        "code" : "FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.identifiant",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.code",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.description",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.status",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.dureeTraitement",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.frequenceAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.effectiveTime[@operator='A']",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.nombreRenouvellement",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.repeatNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.voieAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.regionAnatomique",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.dose",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.rythmeAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.doseMaximale",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.produitSante",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.prescripteur",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.auteur",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.motifTraitement",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.traitementPrescritSubordonnee",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitementPrescritSubordonnee",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.referenceItemPlanTraitement",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frReferenceItemPlanTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.instructionsPatient",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.instructionsDispensateur",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.quantiteProduit",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.autorisationSubstitution",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.periodeRenouvellement",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.enRapportAvecALD",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.enRapportAvecPrevention",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.nonRemboursable",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frNonRemboursable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.horsAMM",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frHorsAMM",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.referencePrescription",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.frReferenceInterne.externalDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescrit.precondition",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.precondition",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-request-document",
    "element" : [{
      "code" : "FRCDATraitementPrescrit",
      "target" : [{
        "code" : "FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.id",
      "target" : [{
        "code" : "FRMedicationRequestDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.code",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.text",
      "target" : [{
        "code" : "FRMedicationRequestDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.statusCode",
      "target" : [{
        "code" : "FRMedicationRequestDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.effectiveTime[not(@operator='A')]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.boundsPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.effectiveTime[@operator='A']",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.repeatNumber",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.numberOfRepeatsAllowed",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.routeCode",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.approachSiteCode",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.doseQuantity",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.doseAndRate.doseRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.rateQuantity",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.doseAndRate.rateRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.maxDoseQuantity",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.consumable",
      "target" : [{
        "code" : "FRMedicationRequestDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.author",
      "target" : [{
        "code" : "FRMedicationRequestDocument.requester",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.author",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frReferenceInterne",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitementPrescritSubordonnee",
      "target" : [{
        "code" : "FRMedicationRequestDocument.medication:FRMedicationsCombinaisonDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frReferenceItemPlanTraitement",
      "target" : [{
        "code" : "basedOn:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frInstructionsAuPatient",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.additionalInstruction:instructionsPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution",
      "target" : [{
        "code" : "FRMedicationRequestDocument.substitution.allowedCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.validityPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:ald",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:accidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:prevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frNonRemboursable",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:FRNotCoveredExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.entryRelationship:frHorsAMM",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:FRMedicationRequestOutOfNomenclatureExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.frReferenceInterne.externalDocument",
      "target" : [{
        "code" : "FRMedicationRequestDocument.instantiatesUri",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescrit.precondition",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.additionalInstruction:precondition",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
