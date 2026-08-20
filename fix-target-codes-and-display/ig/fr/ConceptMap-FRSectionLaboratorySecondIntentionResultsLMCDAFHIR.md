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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultats-laboratoire-biologie-seconde-intention",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-de-biologie-de-seconde-intention",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation",
      "target" : [{
        "code" : "Section.entry:FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache",
      "target" : [{
        "code" : "Section.entry:FRCDADocumentAttache",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-de-biologie-de-seconde-intention",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Section",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections",
        "display" : "FRCompositionDocument.section:sans",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.code",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.title",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.text",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.entry:FRCDASimpleObservation",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.entry:FRCDADocumentAttache",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
