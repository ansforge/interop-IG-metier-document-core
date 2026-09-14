# Mapping FRLMLaboratoryObservation → FRCDAResultatsExamensDeBiologieMedicale / FRCDABatterieExamensDeBiologieMedicale / FRCDAIsolatMicrobiologique / FRCDAResultatExamensDeBiologieElementCliniquePertinent / FRLMLaboratoryObservation → FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMLaboratoryObservation → FRCDAResultatsExamensDeBiologieMedicale / FRCDABatterieExamensDeBiologieMedicale / FRCDAIsolatMicrobiologique / FRCDAResultatExamensDeBiologieElementCliniquePertinent / FRLMLaboratoryObservation → FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modèle métier FRLMLaboratoryObservation vers ses quatre représentations CDA possibles selon le niveau de la hiérarchie du compte rendu de biologie (Examen de biologie médicale, Batterie, Isolat microbiologique, Résultat/élément clinique pertinent), puis vers l'unique profil FHIR FRObservationLaboratoryReportResultsDocument (qui porte lui-même ces quatre rôles, la hiérarchie étant représentée par Observation.hasMember). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLaboratoryObservationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLaboratoryObservationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRLaboratoryObservationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultat d'examen de biologie médicale\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-14T13:28:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMLaboratoryObservation vers ses quatre représentations CDA possibles selon le niveau de la hiérarchie du compte rendu de biologie (Examen de biologie médicale, Batterie, Isolat microbiologique, Résultat/élément clinique pertinent), puis vers l'unique profil FHIR FRObservationLaboratoryReportResultsDocument (qui porte lui-même ces quatre rôles, la hiérarchie étant représentée par Observation.hasMember).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-examens-de-biologie-medicale",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratoryObservation",
      "target" : [{
        "code" : "Act",
        "display" : "FRCDAResultatsExamensDeBiologieMedicale",
        "equivalence" : "equivalent",
        "comment" : "Niveau racine de la hiérarchie d'un compte rendu de biologie."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.status",
      "target" : [{
        "code" : "Act.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.type",
      "target" : [{
        "code" : "Act.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.originalName",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Act.code ne porte pas de originalText dans ce profil."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.observationDate[x]",
      "target" : [{
        "code" : "Act.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.specimen",
      "target" : [{
        "code" : "Act.entryRelationship:frPrelevement",
        "display" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.order",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "La demande d'examen est portée globalement au niveau du document (inFulfillmentOf), pas à ce niveau d'entrée."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.bodySite",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.result",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Ce niveau regroupe des résultats, il n'en porte pas directement."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.referenceRange",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.interpretation",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.method",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.note",
      "target" : [{
        "code" : "Act.entryRelationship:frCommentaireER",
        "display" : "FRCDACommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Act.entryRelationship:frImageIllustrative",
        "display" : "FRCDAImageIllustrative",
        "equivalence" : "wider",
        "comment" : "Seul le cas d'une image illustrative est representable à ce niveau ; les autres références d'observations sont portées au niveau Résultat/élément clinique pertinent."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.hasMember[x]",
      "target" : [{
        "code" : "Act.entryRelationship:frBatterieExamensDeBiologieMedicale",
        "display" : "FRCDABatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      },
      {
        "code" : "Act.entryRelationship:frIsolatMicrobiologique",
        "display" : "FRCDAIsolatMicrobiologique",
        "equivalence" : "equivalent"
      },
      {
        "code" : "Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent",
        "display" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent",
        "comment" : "Une Observation peut regrouper des Batteries, des Isolats et/ou des Résultats/éléments cliniques pertinents ; ces trois types d'entrées sont représentés par des entryRelationship distincts dans le CDA, mais par un seul hasMember dans le FHIR (la hiérarchie étant représentée par hasMember)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.previousResults",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Ce niveau ne porte pas cette relation ; voir le niveau Résultat/élément clinique pertinent."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.testKit",
      "target" : [{
        "code" : "Act.participant:frParticipantDispositifAutomatique",
        "equivalence" : "relatedto",
        "comment" : "participant[frParticipantDispositifAutomatique] (typeCode DEV) désigne plus largement un dispositif automatique impliqué dans la production du résultat, sans distinguer spécifiquement un test kit."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.calibrator",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.accreditationStatus",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.pointOfCareTest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratoryObservation",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDABatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent",
        "comment" : "Niveau intermédiaire de regroupement d'un ensemble d'examens biologiques (Batterie) ; ne porte pas de valeur de résultat en propre."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.status",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.type",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.originalName",
      "target" : [{
        "code" : "Organizer.code.originalText.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.observationDate[x]",
      "target" : [{
        "code" : "Organizer.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.specimen",
      "target" : [{
        "code" : "Organizer.component:frPrelevement",
        "display" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.order",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.bodySite",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.result",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Ce niveau regroupe des résultats, il n'en porte pas directement."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.referenceRange",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.interpretation",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.method",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.note",
      "target" : [{
        "code" : "Organizer.component:frCommentaireER",
        "display" : "FRCDACommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Organizer.component:frImageIllustrative",
        "display" : "FRCDAImageIllustrative",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.hasMember[x]",
      "target" : [{
        "code" : "Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "display" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent",
        "comment" : "Une Batterie ne peut regrouper que des Résultats/éléments cliniques pertinents ; ces deux types d'entrées sont représentés par des entryRelationship distincts dans le CDA, mais par un seul hasMember dans le FHIR (la hiérarchie étant représentée par hasMember)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.previousResults",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.testKit",
      "target" : [{
        "code" : "Organizer.participant",
        "equivalence" : "relatedto",
        "comment" : "participant (typeCode DEV, non slicé dans ce profil) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.calibrator",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.accreditationStatus",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.pointOfCareTest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-isolat-microbiologique",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratoryObservation",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDAIsolatMicrobiologique",
        "equivalence" : "equivalent",
        "comment" : "Niveau de regroupement des résultats obtenus sur un isolat microbiologique ; ne porte pas de valeur de résultat en propre."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.status",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.type",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.originalName",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.observationDate[x]",
      "target" : [{
        "code" : "Organizer.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.specimen",
      "target" : [{
        "code" : "Organizer.specimen",
        "equivalence" : "wider",
        "comment" : "specimen porte ici l'isolat microbiologique lui-même (1..1), pas un prélèvement générique : il n'y a pas de sous-entrée Prélèvement à ce niveau."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.order",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.bodySite",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.result",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Ce niveau regroupe des résultats, il n'en porte pas directement."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.referenceRange",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.interpretation",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.method",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.note",
      "target" : [{
        "code" : "Organizer.component:frCommentaireER",
        "display" : "FRCDACommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Organizer.component:frImageIllustrative",
        "display" : "FRCDAImageIllustrative",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.hasMember[x]",
      "target" : [{
        "code" : "Organizer.component:frBatterieExamensDeBiologieMedicale",
        "display" : "FRCDABatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      },
      {
        "code" : "Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "display" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.previousResults",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.testKit",
      "target" : [{
        "code" : "Organizer.participant:frParticipantDispositif",
        "equivalence" : "relatedto",
        "comment" : "participant[frParticipantDispositif] (typeCode DEV) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.calibrator",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.accreditationStatus",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.pointOfCareTest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratoryObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent",
        "comment" : "Observation qui porte directement une valeur de résultat."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.originalName",
      "target" : [{
        "code" : "Observation.code.originalText.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.specimen",
      "target" : [{
        "code" : "Observation.entryRelationship:frPrelevement",
        "display" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.order",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.bodySite",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.referenceRange",
      "target" : [{
        "code" : "Observation.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.interpretation",
      "target" : [{
        "code" : "Observation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.method",
      "target" : [{
        "code" : "Observation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.note",
      "target" : [{
        "code" : "Observation.entryRelationship:frCommentaireER",
        "display" : "FRCDACommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.derivedFrom[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de sous-entrée Image illustrative à ce niveau (uniquement aux niveaux Batterie, Isolat et Examen de biologie médicale)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.hasMember[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de sous-entrée hasMember à ce niveau (uniquement aux niveaux Batterie, Isolat et Examen de biologie médicale)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.previousResults",
      "target" : [{
        "code" : "Observation.entryRelationship:frResultatsAnterieurs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.testKit",
      "target" : [{
        "code" : "Observation.participant",
        "equivalence" : "relatedto",
        "comment" : "participant (typeCode DEV, non slicé dans ce profil) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.calibrator",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.accreditationStatus",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.pointOfCareTest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratoryObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent",
        "comment" : "Un seul profil FHIR porte les quatre rôles CDA (Examen de biologie médicale, Batterie, Isolat, Résultat clinique) ; la hiérarchie entre occurrences est portée par Observation.hasMember."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.header.directSubject[x]",
      "target" : [{
        "code" : "Observation.focus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.originalName",
      "target" : [{
        "code" : "Observation.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.specimen",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.order",
      "target" : [{
        "code" : "Observation.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.bodySite",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.referenceRange",
      "target" : [{
        "code" : "Observation.referenceRange",
        "equivalence" : "equivalent",
        "comment" : "Ce profil définit par ailleurs value[x]:valueRange, utilisé quand l'observation est elle-même une déclaration d'intervalle de référence plutôt qu'un résultat mesuré."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.component",
      "target" : [{
        "code" : "Observation.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Observation.derivedFrom",
        "equivalence" : "wider",
        "comment" : "Observation.derivedFrom est restreint à Reference(FRMediaDocument) (image illustrative) dans ce profil."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.hasMember[x]",
      "target" : [{
        "code" : "Observation.hasMember",
        "equivalence" : "equivalent",
        "comment" : "Observation.hasMember est restreint à Reference(FRObservationLaboratoryReportResultsDocument)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.previousResults",
      "target" : [{
        "code" : "Observation.extension:supportingInfo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.testKit",
      "target" : [{
        "code" : "Observation.extension:testKit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.calibrator",
      "target" : [{
        "code" : "Observation.extension:calibrator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.accreditationStatus",
      "target" : [{
        "code" : "Observation.extension:accreditationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.pointOfCareTest",
      "target" : [{
        "code" : "Observation.category",
        "equivalence" : "relatedto",
        "comment" : "Observation.category porte déjà le code du chapitre dans ce profil ; l'indicateur de test de point de soins y serait porté comme un codage additionnel distinct au sein du même élément (0..*)."
      }]
    },
    {
      "code" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "target" : [{
        "code" : "Observation.extension:triggeredBy",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
