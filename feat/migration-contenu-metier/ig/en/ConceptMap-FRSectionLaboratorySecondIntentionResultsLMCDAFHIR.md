# Mapping FRLMResultatsLaboratoireBiologieSecondeIntention → FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention → FRCompositionDocument.section:sans-sous-sections - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatsLaboratoireBiologieSecondeIntention → FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention → FRCompositionDocument.section:sans-sous-sections 

 
Mapping des éléments du modèle métier FRLMResultatsLaboratoireBiologieSecondeIntention vers la section CDA FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention, puis vers le profil FHIR FRCompositionDocument.section:LaboratoryResults. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionLaboratorySecondIntentionResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionLaboratorySecondIntentionResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Résultats de laboratoire de biologie de seconde intention",
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
  "description" : "Mapping des éléments du modèle métier FRLMResultatsLaboratoireBiologieSecondeIntention vers la section CDA FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention, puis vers le profil FHIR FRCompositionDocument.section:LaboratoryResults.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-laboratoire-biologie-seconde-intention",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-de-laboratoire-de-biologie-de-seconde-intention",
    "element" : [{
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache",
      "target" : [{
        "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-de-laboratoire-de-biologie-de-seconde-intention",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
