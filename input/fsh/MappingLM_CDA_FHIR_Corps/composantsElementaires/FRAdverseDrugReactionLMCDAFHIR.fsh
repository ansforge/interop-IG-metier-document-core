Instance: FRAdverseDrugReactionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdverseDrugReaction → FRCDAEffetIndesirable / FRLMAdverseDrugReaction → FRAdverseEventDocument"
Description: "Mapping des éléments du modèle métier FRLMAdverseDrugReaction vers le profil CDA FRCDAEffetIndesirable, puis vers le profil FHIR FRAdverseEventDocument."    

* title = "Mapping Métier/CDA/FHIR : \"Effet Indésirable\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-effet-indesirable"

// Élément racine
* group[=].element[+].code = #FRLMAdverseDrugReaction
* group[=].element[=].target.code = #FRCDAEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.identifier
* group[=].element[=].target.code = #FRCDAEffetIndesirable.id
* group[=].element[=].target.equivalence = #equivalent

// Status
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.status
* group[=].element[=].target.code = #FRCDAEffetIndesirable.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMAdverseDrugReaction.adverseDrugReactionType
* group[=].element[=].target.code = #FRCDAEffetIndesirable.code
* group[=].element[=].target.equivalence = #equivalent  

// Date de début et de fin de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.date
* group[=].element[=].target.code = #FRCDAEffetIndesirable.effectiveTime
* group[=].element[=].target.equivalence = #equivalent 

// Date de détection de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.detected
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "La date de détection de l'effet indésirable n'est pas mappée dans le profil CDA FRCDAEffetIndesirable. Elle est mappée dans le profil FHIR FRAdverseEventDocument."

// Valeur de l'observation
* group[=].element[+].code = #FRLMAdverseDrugReaction.value
* group[=].element[=].target.code = #FRCDAEffetIndesirable.value
* group[=].element[=].target.equivalence = #equivalent

// Traitement
* group[=].element[+].code = #FRLMAdverseDrugReaction.medicationAdministration
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAdverseDrugReaction.reaction
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRLMAdverseDrugReaction.causalityAssessment
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Gravité
* group[=].element[+].code = #FRLMAdverseDrugReaction.severity
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRLMAdverseDrugReaction.outcome
* group[=].element[=].target.code = #FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-adverse-event-document" 

// Élément racine
* group[=].element[+].code = #FRLMAdverseDrugReaction
* group[=].element[=].target.code = #FRAdverseEventDocument
* group[=].element[=].target.equivalence = #equivalent  

// Identifiant
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.identifier
* group[=].element[=].target.code = #FRAdverseEventDocument.identifier
* group[=].element[=].target.equivalence = #equivalent  

// Code
* group[=].element[+].code = #FRLMAdverseDrugReaction.adverseDrugReactionType
* group[=].element[=].target.code = #FRAdverseEventDocument.category    
* group[=].element[=].target.equivalence = #equivalent

// Date de début de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.date
* group[=].element[=].target.code = #FRAdverseEventDocument.date
* group[=].element[=].target.equivalence = #equivalent

// Date de détection de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.detected
* group[=].element[=].target.code = #FRAdverseEventDocument.detected
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation (non renseigné et fixé à value xsi:type='CD')
* group[=].element[+].code = #FRLMAdverseDrugReaction.value
* group[=].element[=].target.equivalence = #unmatched

// Traitement
* group[=].element[+].code = #FRLMAdverseDrugReaction.medicationAdministration
* group[=].element[=].target.code = #FRAdverseEventDocument.suspectEntity.instance
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAdverseDrugReaction.reaction
* group[=].element[=].target.code = #FRAdverseEventDocument.resultingCondition
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRLMAdverseDrugReaction.causalityAssessment
* group[=].element[=].target.code = #FRAdverseEventDocument.suspectEntity.causality
* group[=].element[=].target.equivalence = #equivalent

// Gravité
* group[=].element[+].code = #FRLMAdverseDrugReaction.severity
* group[=].element[=].target.code = #FRAdverseEventDocument.severity
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRLMAdverseDrugReaction.outcome
* group[=].element[=].target.code = #FRAdverseEventDocument.outcome
* group[=].element[=].target.equivalence = #equivalent