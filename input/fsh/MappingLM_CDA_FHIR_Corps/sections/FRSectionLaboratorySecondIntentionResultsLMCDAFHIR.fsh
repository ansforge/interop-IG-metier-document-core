Instance: FRSectionLaboratorySecondIntentionResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultatsLaboratoireBiologieSecondeIntention → FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention → FRCompositionDocument.section:sans-sous-sections"
Description: "Mapping des éléments du modèle métier FRLMResultatsLaboratoireBiologieSecondeIntention vers la section CDA FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention, puis vers le profil FHIR FRCompositionDocument.section:LaboratoryResults."
* title = "Mapping Métier/CDA/FHIR : Résultats de laboratoire de biologie de seconde intention"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultats-laboratoire-biologie-seconde-intention"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-de-biologie-de-seconde-intention"
// Élément racine
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation
* group[=].element[=].target.code = #Section.entry:FRCDASimpleObservation
* group[=].element[=].target.equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache
* group[=].element[=].target.code = #Section.entry:FRCDADocumentAttache
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-de-biologie-de-seconde-intention"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #Section
* group[=].element[=].target.code = #Composition.section:sans-sous-sections
* group[=].element[=].target.display = "FRCompositionDocument.section:sans"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #Section.code
* group[=].element[=].target.code = #Composition.section:sans-sous-sections.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #Section.title
* group[=].element[=].target.code = #Composition.section:sans-sous-sections.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #Section.text
* group[=].element[=].target.code = #Composition.section:sans-sous-sections.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #Section.entry:FRCDASimpleObservation
* group[=].element[=].target.code = #Composition.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #Section.entry:FRCDADocumentAttache
* group[=].element[=].target.code = #Composition.section:sans-sous-sections.entry:FRDocumentReferenceDocument
* group[=].element[=].target.equivalence = #equivalent