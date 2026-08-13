Instance: FRSectionPredictableAdverseDrugReactionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPredictableAdverseDrugReaction → FRCDAEffetsIndesirables/ FRLMPredictableAdverseDrugReaction → FRCompositionDocument.section:sectionPredictableAdverseDrugReaction"
Description: "Mapping des éléments du modèle métier FRLMPredictableAdverseDrugReaction vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:sectionPredictableAdverseDrugReaction."
* title = "Mapping Métier/CDA/FHIR : \"Effets indésirables\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables"
// élément racine
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.titreSection
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.description
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Effet indésirable
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction
* group[=].element[=].target[+].code = #FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : Métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-predictable-adverse-drug-reaction"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Effet indésirable
* group[=].element[+].code = #FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument 
* group[=].element[=].target[=].equivalence = #equivalent
