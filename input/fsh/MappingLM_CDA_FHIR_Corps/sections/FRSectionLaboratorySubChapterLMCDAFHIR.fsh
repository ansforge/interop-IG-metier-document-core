Instance: FRSectionLaboratorySubChapterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCRBIOSousChapitre → FRCDACRBIOSousChapitre → FRCompositionDocument.section:avec-sous-sections.section"
Description: "Mapping des éléments du modèle métier FRLMCRBIOSousChapitre vers la section CDA FRCDACRBIOSousChapitre, puis vers le profil FHIR FRCompositionDocument.section:avec-sous-sections.section."
* title = "Mapping Métier/CDA/FHIR : \"Sous-chapitre de BIO\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-crbio-sous-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-sous-chapitre"
// Élément racine
* group[=].element[+].code = #FRLMCRBIOSousChapitre
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDACRBIOSousChapitre"
* group[=].element[=].target.equivalence = #equivalent  
// code de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.blocNarratif
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMCRBIOSousChapitre.titreSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale
* group[=].element[=].target.code = #Section.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-sous-chapitre"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #Section
* group[=].element[=].target.code = #Composition.section:avec-sous-sections.section
* group[=].element[=].target.display = "FRCompositionDocument.section:avec"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #Section.code
* group[=].element[=].target.code = #Composition.section:avec-sous-sections.section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #Section.text
* group[=].element[=].target.code = #Composition.section:avec-sous-sections.section.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #Section.title
* group[=].element[=].target.code = #Composition.section:avec-sous-sections.section.title
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de BIO
* group[=].element[+].code = #Section.entry:FRCDAResultatsExamensDeBiologieMedicale
* group[=].element[=].target.code = #Composition.section:avec-sous-sections.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
