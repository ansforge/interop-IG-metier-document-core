Instance: FRSectionSocialHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSocialHistory → FRCDAHabitusModeDeVieSection / FRLMSocialHistory → FRCompositionDocument.section:sectionSocialHistory"
Description: "Mapping des éléments du modèle métier FRLMSocialHistory vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:sectionSocialHistory."
* title = "Mapping Métier/CDA/FHIR : Habitus et modes de vie"
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-social-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-habitus-mode-de-vie"
// Élément racine
* group[=].element[+].code = #FRLMSocialHistory
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDAHabitusModeDeVieSection"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSocialHistory.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSocialHistory.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMSocialHistory.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// entrées Habitus, Mode de vie
* group[=].element[+].code = #FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory
* group[=].element[=].target.code = #Section.entry:FRCDAHabitusModeDeVie
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR CompositionDocument.section:sectionSocialHistory
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-social-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMSocialHistory
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionSocialHistory"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMSocialHistory.codeSection
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMSocialHistory.titleSection
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Bloc narratif
* group[=].element[+].code = #FRLMSocialHistory.description
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrées Habitus, Mode de vie
* group[=].element[+].code = #FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry:FRObservationSocialHistoryDocument
* group[=].element[=].target.equivalence = #equivalent
