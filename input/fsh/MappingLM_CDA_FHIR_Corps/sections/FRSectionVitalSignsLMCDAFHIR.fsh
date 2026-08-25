Instance: FRSectionVitalSignsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMVitalSigns → FRCDASignesVitaux / FRLMVitalSigns → FRCompositionDocument.section:sectionVitalSigns"
Description: "Mapping des éléments du modèle métier FRLMVitalSigns vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:VitalSigns."
* name = "FRSectionVitalSignsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : Signes vitaux"
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMVitalSigns"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-signes-vitaux"
// Élément racine
* group[=].element[+].code = #FRLMVitalSigns
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDASectionSignesVitaux"
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRLMVitalSigns.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRLMVitalSigns.entry.observationVitalSign
* group[=].element[=].target.code = #Section.entry
* group[=].element[=].target.display = "FRCDASignesVitaux"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Section.entry référence l'Organizer FRCDASignesVitaux, qui regroupe via .component chaque signe vital observé (FRCDASigneVitalObserve)."

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMVitalSigns"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMVitalSigns
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionVitalSigns"
* group[=].element[=].target.equivalence = #equivalent
// titreSection
* group[=].element[+].code = #FRLMVitalSigns.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Entrée Signes vitaux
* group[=].element[+].code = #FRLMVitalSigns.entry.observationVitalSign
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRObservationVitalSignsDocument"
* group[=].element[=].target.equivalence = #equivalent