# Mapping FRLMDemandeExamenImagerie → FRCDADICOMDemandeExamen → FRServiceRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDemandeExamenImagerie → FRCDADICOMDemandeExamen → FRServiceRequestDocument 

 
Mapping des éléments du modèle métier FRLMDemandeExamenImagerie vers la section CDA FRCDADICOMDemandeExamen puis vers le profil FHIR FRCompositionDocument.section:serviceRequest. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingServiceRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingServiceRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Demande d'examen d'imagerie",
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
  "description" : "Mapping des éléments du modèle métier FRLMDemandeExamenImagerie vers la section CDA FRCDADICOMDemandeExamen puis vers le profil FHIR FRCompositionDocument.section:serviceRequest.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen",
    "element" : [{
      "code" : "FRLMDemandeExamenImagerie",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenImagerie.titreSection",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenImagerie.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADICOMDemandeExamen",
      "target" : [{
        "code" : "FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMDemandeExamen.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:serviceRequest.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMDemandeExamen.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:finaliteExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMDemandeExamen.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:justificationDemande",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
