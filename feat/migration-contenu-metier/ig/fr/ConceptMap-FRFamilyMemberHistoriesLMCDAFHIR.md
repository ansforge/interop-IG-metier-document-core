# Mapping FRLMAntecedentsFamiliauxEntree → FRCDAAntecedentsFamiliaux → FRFamilyMemberHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAntecedentsFamiliauxEntree → FRCDAAntecedentsFamiliaux → FRFamilyMemberHistoryDocument 

 
Mapping des éléments du modèle métier FRLMAntecedentsFamiliauxEntree vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRFamilyMemberHistoriesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRFamilyMemberHistoriesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAntecedentsFamiliauxEntree vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-familiaux-entree",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux",
    "element" : [{
      "code" : "FRLMAntecedentsFamiliauxEntree",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsFamiliauxEntree.statut",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsFamiliauxEntree.identificationParent",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsFamiliauxEntree.participant",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsFamiliauxEntree.antecedentFamilialObserve",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-family-member-history-document",
    "element" : [{
      "code" : "FRCDAAntecedentsFamiliaux",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.statusCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.relationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.administrativeGenderCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.sex",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.birthTime",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.born[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:deceasedInd",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.deceasedBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:deceasedTime",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.deceasedDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:multipleBirthInd",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.patient.multipleBirthBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject.subject.sdtc:multipleBirthOrderNumber",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.patient.multipleBirthInteger",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.participant",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.relationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
