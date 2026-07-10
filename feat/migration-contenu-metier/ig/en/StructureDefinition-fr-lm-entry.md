# Logical model - FR LM Entry - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Entry 

 
Modèle logique représentant l'entrée 

**Usages:**

* Derived from this Logical Model: [Logical model - FR LM Advance Directive](StructureDefinition-fr-lm-advance-directive.md), [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-fr-lm-adverse-drug-reaction.md), [Logical model - FR LM Alert](StructureDefinition-fr-lm-alert.md), [Logical model - FR LM Allergy Intolerance](StructureDefinition-fr-lm-allergy-intolerance.md)... Show 39 more, [Logical model - FR LM Attachment](StructureDefinition-fr-lm-attachment.md), [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md), [Logical model - FR LM Care Plan](StructureDefinition-fr-lm-care-plan.md), [Logical model - FR LM Condition](StructureDefinition-fr-lm-condition.md), [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM DICOM Medication Administration](StructureDefinition-fr-lm-dicom-medication-administration.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Endpoint](StructureDefinition-fr-lm-endpoint.md), [Logical model - FR LM Family Member History](StructureDefinition-fr-lm-family-member-history.md), [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md), [Logical model - FR LM Immunisation](StructureDefinition-fr-lm-immunisation.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md), [Logical model- FR LM Medication Administration ](StructureDefinition-fr-lm-medication-administration.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md), [Logical model - FR LM Micro Organism Search](StructureDefinition-fr-lm-micro-organism-search.md), [Logical model - FR LM Multidrug Resistant Microorganism Identification](StructureDefinition-fr-lm-multidrug-resistant-microorganism-identification.md), [Logical model - FR LM Assessment](StructureDefinition-fr-lm-observation-assessment.md), [Logical model - FR LM ObservationMedia](StructureDefinition-fr-lm-observation-media.md), [Logical model- FR LM Observation Social History](StructureDefinition-fr-lm-observation-social-history.md), [Logical model - FR LM Observation Vital Sign](StructureDefinition-fr-lm-observation-vital-sign.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Patient Transfer.](StructureDefinition-fr-lm-patient-transfer.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model- FR LM Pregnancy Status](StructureDefinition-fr-lm-pregnancy-status.md), [Logical model - FR LM Prescription](StructureDefinition-fr-lm-prescription-entree.md), [Logical model - FR LM Medication Prescription](StructureDefinition-fr-lm-prescription-item.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [Logical model - FR LM Quantity Exposure](StructureDefinition-fr-lm-quantity-exposure.md), [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-fr-lm-resultat-examens-biologie-element-clinique-pertinent.md), [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md), [Logical model - FR LM Series](StructureDefinition-fr-lm-series.md), [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md), [Logical model - FR LM SOP Instance](StructureDefinition-fr-lm-sop-instance.md), [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md), [Logical model- FR LM Technique imagerie](StructureDefinition-fr-lm-technique-imagerie.md), [Logical model - FR LM Transfusion accidents](StructureDefinition-fr-lm-transfusion-accidents.md), [Logical model - FR LM Transfusion de produits sanguins](StructureDefinition-fr-lm-transfusion-de-produits-sanguins.md) and [Logical model - FR LM TravelHistory](StructureDefinition-fr-lm-travel-history.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-entry.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-entry.csv), [Excel](../StructureDefinition-fr-lm-entry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-entry",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry",
  "version" : "0.1.0",
  "name" : "FRLMEntry",
  "title" : "Logical model - FR LM Entry",
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
  "description" : "Modèle logique représentant l'entrée",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-entry",
      "path" : "fr-lm-entry",
      "short" : "Logical model - FR LM Entry",
      "definition" : "Modèle logique représentant l'entrée"
    },
    {
      "id" : "fr-lm-entry.header",
      "path" : "fr-lm-entry.header",
      "short" : "Métadonnées de base",
      "definition" : "Métadonnées de base",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-entry.header.subject",
      "path" : "fr-lm-entry.header.subject",
      "short" : "Patient / Usager",
      "definition" : "Patient / Usager",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      }]
    },
    {
      "id" : "fr-lm-entry.header.identifier",
      "path" : "fr-lm-entry.header.identifier",
      "short" : "Identifiant de l’entrée",
      "definition" : "Identifiant de l’entrée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-entry.header.author[x]",
      "path" : "fr-lm-entry.header.author[x]",
      "short" : "author[x] peut correspondre soit à un professionnel, soit à une organisation, soit à un système.",
      "definition" : "author[x] peut correspondre soit à un professionnel, soit à une organisation, soit à un système.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-entry.header.author[x].authorProfessional",
      "path" : "fr-lm-entry.header.author[x].authorProfessional",
      "short" : "L'auteur est un professionnel de santé",
      "definition" : "L'auteur est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-entry.header.author[x].authorOrganisation",
      "path" : "fr-lm-entry.header.author[x].authorOrganisation",
      "short" : "L'auteur est une organisation",
      "definition" : "L'auteur est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-entry.header.author[x].authorDevice",
      "path" : "fr-lm-entry.header.author[x].authorDevice",
      "short" : "L'auteur est un système",
      "definition" : "L'auteur est un système",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-entry.header.performer[x]",
      "path" : "fr-lm-entry.header.performer[x]",
      "short" : "Exécutant (performer)",
      "definition" : "Exécutant (performer)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-entry.header.participant[x]",
      "path" : "fr-lm-entry.header.participant[x]",
      "short" : "Participant",
      "definition" : "Participant",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-entry.header.participant[x].participantProfessional",
      "path" : "fr-lm-entry.header.participant[x].participantProfessional",
      "short" : "Le participant est un professionnel de santé",
      "definition" : "Le participant est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-entry.header.participant[x].participantOrganisation",
      "path" : "fr-lm-entry.header.participant[x].participantOrganisation",
      "short" : "Le participant est une organisation",
      "definition" : "Le participant est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-entry.header.participant[x].participantDevice",
      "path" : "fr-lm-entry.header.participant[x].participantDevice",
      "short" : "Le participant est un système",
      "definition" : "Le participant est un système",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-entry.header.informant",
      "path" : "fr-lm-entry.header.informant",
      "short" : "Informateur",
      "definition" : "Informateur",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-informant"
      }]
    },
    {
      "id" : "fr-lm-entry.header.date",
      "path" : "fr-lm-entry.header.date",
      "short" : "Date/Heure de création par l'auteur",
      "definition" : "Date/Heure de création par l'auteur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-entry.header.status",
      "path" : "fr-lm-entry.header.status",
      "short" : "Statut",
      "definition" : "Statut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-entry.header.source",
      "path" : "fr-lm-entry.header.source",
      "short" : "Source",
      "definition" : "Source",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-entry.header.language",
      "path" : "fr-lm-entry.header.language",
      "short" : "'fr-FR' pour français métropolitain (la casse des caractères doit être respectée)\nLa partie en minuscules indique le code de la langue utilisée (ISO-639-1)\nLa partie en majuscules indique le code pays (ISO-3166)",
      "definition" : "'fr-FR' pour français métropolitain (la casse des caractères doit être respectée)\nLa partie en minuscules indique le code de la langue utilisée (ISO-639-1)\nLa partie en majuscules indique le code pays (ISO-3166)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
