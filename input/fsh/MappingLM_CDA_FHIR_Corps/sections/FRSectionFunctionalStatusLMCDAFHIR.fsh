Instance: FRSectionFunctionalStatusLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFunctionalStatus → FRCDAStatutFonctionnel / FRLMFunctionalStatus → FRCompositionDocument.section:sectionFunctionalStatus"
Description: "Mapping des éléments du modèle métier FRLMFunctionalStatus vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:sectionFunctionalStatus."
* title = "Mapping Métier/CDA/FHIR : \"Statut fonctionnel\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-functional-status"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-fonctionnel"
// Élément racine
* group[=].element[+].code = #FRLMFunctionalStatus
* group[=].element[=].target.code = #FRCDAStatutFonctionnel
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMFunctionalStatus.codeSection
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFunctionalStatus.titleSection
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMFunctionalStatus.description
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.text
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMFunctionalStatus.author
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRLMFunctionalStatus.informant
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.informant
* group[=].element[=].target.equivalence = #equivalent
// entree - groupeQuestionnairesEvaluation
* group[=].element[+].code = #FRLMFunctionalStatus.entry.assessment
* group[=].element[=].target.code = #FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-functional-status"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMFunctionalStatus
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionFunctionalStatus
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMFunctionalStatus.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionFunctionalStatus.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFunctionalStatus.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionFunctionalStatus.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMFunctionalStatus.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionFunctionalStatus.text
* group[=].element[=].target.equivalence = #equivalent
// auteur
* group[=].element[+].code = #FRLMFunctionalStatus.author
* group[=].element[=].target.code = #FRCompositionDocument.author
* group[=].element[=].target.equivalence = #equivalent
// informateur
* group[=].element[+].code = #FRLMFunctionalStatus.informant
* group[=].element[=].target.code = #FRCompositionDocument.extension:informant
* group[=].element[=].target.equivalence = #equivalent
// entree - groupe questionnaires d'évaluation
* group[=].element[+].code = #FRLMFunctionalStatus.entry.assessment
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionFunctionalStatus.entry:FRObservationAssessmentDocument
* group[=].element[=].target.equivalence = #equivalent