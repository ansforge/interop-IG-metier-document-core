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
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAEffetIndesirable"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent

// Status
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMAdverseDrugReaction.adverseDrugReactionType
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent  

// Date de début et de fin de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.date
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent 

// Date de détection de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.detected
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "La date de détection de l'effet indésirable n'est pas mappée dans le profil CDA FRCDAEffetIndesirable. Elle est mappée dans le profil FHIR FRAdverseEventDocument."

// Valeur de l'observation
* group[=].element[+].code = #FRLMAdverseDrugReaction.value
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent

// Traitement
* group[=].element[+].code = #FRLMAdverseDrugReaction.medicationAdministration
* group[=].element[=].target.code = #Observation.entryRelationship:frTraitement
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAdverseDrugReaction.reaction
* group[=].element[=].target.code = #Observation.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRLMAdverseDrugReaction.causalityAssessment
* group[=].element[=].target.code = #Observation.entryRelationship:frImputabiliteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Gravité
* group[=].element[+].code = #FRLMAdverseDrugReaction.severity
* group[=].element[=].target.code = #Observation.entryRelationship:frGraviteEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRLMAdverseDrugReaction.outcome
* group[=].element[=].target.code = #Observation.entryRelationship:frEvolutionEffetIndesirable
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-adverse-event-document" 

// Élément racine
* group[=].element[+].code = #FRLMAdverseDrugReaction
* group[=].element[=].target.code = #AdverseEvent
* group[=].element[=].target.display = "FRAdverseEventDocument"
* group[=].element[=].target.equivalence = #equivalent  

// Identifiant
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.identifier
* group[=].element[=].target.code = #AdverseEvent.identifier
* group[=].element[=].target.equivalence = #equivalent  

// Code
* group[=].element[+].code = #FRLMAdverseDrugReaction.adverseDrugReactionType
* group[=].element[=].target.code = #AdverseEvent.category    
* group[=].element[=].target.equivalence = #equivalent

// Date de début de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.header.date
* group[=].element[=].target.code = #AdverseEvent.date
* group[=].element[=].target.equivalence = #equivalent

// Date de détection de l'effet indésirable
* group[=].element[+].code = #FRLMAdverseDrugReaction.detected
* group[=].element[=].target.code = #AdverseEvent.detected
* group[=].element[=].target.equivalence = #equivalent

// Valeur de l'observation (non renseigné et fixé à value xsi:type='CD')
* group[=].element[+].code = #FRLMAdverseDrugReaction.value
* group[=].element[=].target.equivalence = #unmatched

// Traitement
* group[=].element[+].code = #FRLMAdverseDrugReaction.medicationAdministration
* group[=].element[=].target.code = #AdverseEvent.suspectEntity.instance
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAdverseDrugReaction.reaction
* group[=].element[=].target.code = #AdverseEvent.resultingCondition
* group[=].element[=].target.equivalence = #equivalent

// Imputabilité
* group[=].element[+].code = #FRLMAdverseDrugReaction.causalityAssessment
* group[=].element[=].target.code = #AdverseEvent.suspectEntity.causality
* group[=].element[=].target.equivalence = #equivalent

// Gravité
* group[=].element[+].code = #FRLMAdverseDrugReaction.severity
* group[=].element[=].target.code = #AdverseEvent.severity
* group[=].element[=].target.equivalence = #equivalent  

// Évolution
* group[=].element[+].code = #FRLMAdverseDrugReaction.outcome
* group[=].element[=].target.code = #AdverseEvent.outcome
* group[=].element[=].target.equivalence = #equivalent