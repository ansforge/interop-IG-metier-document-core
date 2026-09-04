# Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument 

 
Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationAdministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationAdministrationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRMedicationAdministrationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "SubstanceAdministration.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.note",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA dédié à une liste de dates précises de prise dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeDuree",
        "equivalence" : "wider",
        "comment" : "effectiveTime:effectiveTimeDuree porte la durée de traitement globale (IVL-TS) ; le modèle métier permet en plus une durée ou un intervalle de durée non distingués séparément côté CDA."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA dédié à une durée d'administration ponctuelle (ex. perfusion) dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "wider",
        "comment" : "Pas d'élément CDA structuré pour un événement déclencheur ; porté par le texte libre des instructions au patient."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "SubstanceAdministration.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA distinct pour une dose maximale par administration ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA distinct pour une dose maximale sur la durée de vie ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "MedicationAdministration",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "MedicationAdministration.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "MedicationAdministration.effective[x]",
        "equivalence" : "equivalent"
      },
      {
        "code" : "MedicationAdministration.extension:occurenceR5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "MedicationAdministration.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "MedicationAdministration.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage",
      "target" : [{
        "code" : "MedicationAdministration.dosage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.note",
      "target" : [{
        "code" : "MedicationAdministration.note",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationAdministration.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "MedicationAdministration.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationAdministration.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationAdministration.dosage.dose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationAdministration.dosage.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationAdministration.dosage.extension:sequence",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
