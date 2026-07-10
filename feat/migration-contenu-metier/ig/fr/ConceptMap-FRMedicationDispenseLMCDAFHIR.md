# Mapping FRLMTraitementDispense → FRCDATraitementDispense → FRMedicationDispenseDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementDispense → FRCDATraitementDispense → FRMedicationDispenseDocument 

 
Mapping des éléments du modèle métier FRLMTraitementDispense vers le profil CDA FRCDATraitementDispense, puis vers le profil FHIR FRMedicationDispenseDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationDispenseLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationDispenseLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement dispensé\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitementDispense vers le profil CDA FRCDATraitementDispense, puis vers le profil FHIR FRMedicationDispenseDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-dispense",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-dispense",
    "element" : [{
      "code" : "FRLMTraitementDispense",
      "target" : [{
        "code" : "FRCDATraitementDispense",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.identifiant",
      "target" : [{
        "code" : "FRCDATraitementDispense.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.code",
      "target" : [{
        "code" : "FRCDATraitementDispense.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.description",
      "target" : [{
        "code" : "FRCDATraitementDispense.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.quantite",
      "target" : [{
        "code" : "FRCDATraitementDispense.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.medicamentDelivre",
      "target" : [{
        "code" : "FRCDATraitementDispense.product:frProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.referencePrescription",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frReferenceItemPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.traitement",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.instructionsPatient",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship.frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.notesDispensateur",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship.frNotesDuDispensateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementDispense.substitution",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship.frActeSubstitution",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-dispense",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-dispense-document",
    "element" : [{
      "code" : "FRCDATraitementDispense",
      "target" : [{
        "code" : "FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.id",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.code",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.text",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.type.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.quantity",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.product:frProduitDeSante",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.entryRelationship:frReferenceItemPrescription",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.authorizingPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.entryRelationship:frTraitement",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.supportingInformation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.entryRelationship:frInstructionsAuPatient",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRMedicationDispenseDocument.dosageInstruction.additionalInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.entryRelationship:frNotesDuDispensateur",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementDispense.entryRelationship:frActeSubstitution",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.substitution",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
