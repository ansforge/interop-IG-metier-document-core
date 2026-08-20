Instance: FRSectionVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMVitalSigns → FRCDASignesVitaux / FRLMVitalSigns → FRCompositionDocument.section:sectionVitalSigns"
Description: "Mapping des éléments du modèle métier FRLMVitalSigns vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:VitalSigns."
* title = "Mapping Métier/CDA/FHIR : Signes vitaux"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-vital-signs"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-signes-vitaux"
// Élément racine
* group[=].element[+].code = #FRLMVitalSigns
* group[=].element[=].target.code = #FRCDASignesVitaux
* group[=].element[=].target.equivalence = #equivalent
// titreSection 
* group[=].element[+].code = #FRLMVitalSigns.titleSection
* group[=].element[=].target.code = #FRCDASignesVitaux.title
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign
* group[=].element[=].target.code = #FRCDASignesVitaux.entry:FRCDASignesVitauxEntry
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-vital-signs"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMVitalSigns
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionVitalSigns
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRLMVitalSigns.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionVitalSigns.title
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument
* group[=].element[=].target.equivalence = #equivalent