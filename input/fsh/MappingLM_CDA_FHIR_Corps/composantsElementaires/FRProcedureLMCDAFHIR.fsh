Instance: FRProcedureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProcedure → FRCDAActe / FRLMProcedure → FRProcedureDocument"
Description: "Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument."

* title = "Mapping Métier/CDA/FHIR : \"Procedure\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-acte"

// Élément racine 
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = "FRCDAActe"
* group[=].element[=].target.equivalence = #equivalent
// Type de l'acte
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #equivalent
// Statutc linique de l'acte
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #Procedure.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #Procedure.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Priorité clinique de l'acte
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #Procedure.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique ciblée par l'acte
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #Procedure.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Voie d'abord / approche utilisée
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #Procedure.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Difficulté opératoire -> observation liée en CDA
* group[=].element[+].code = #FRLMProcedure.difficulty
* group[=].element[=].target.code = #Procedure.entryRelationship:frSimpleObservationDifficulte
* group[=].element[=].target.equivalence = #equivalent
// Motif de l'acte
* group[=].element[+].code = #FRLMProcedure.reason[x]
* group[=].element[=].target.code = #Procedure.entryRelationship:frReferenceInterneMotifActe
* group[=].element[=].target.equivalence = #equivalent
// Outcome : pas d'équivalent structuré en CDA
* group[=].element[+].code = #FRLMProcedure.outcome
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Résultat immédiat de l'acte sans équivalent structuré en CDA."
// Complication : pas d'équivalent structuré
* group[=].element[+].code = #FRLMProcedure.complication
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Complication sans équivalent structuré dans le profil CDA."
// Dispositif médical utilisé : référence au DM en entrée CDA
* group[=].element[+].code = #FRLMProcedure.deviceUsed
* group[=].element[=].target.code = #Procedure.entryRelationship:frReferenceInterneDM
* group[=].element[=].target.equivalence = #equivalent
// Focal device : pas d'équivalent direct dans ce profil CDA
* group[=].element[+].code = #FRLMProcedure.focalDevice
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Focal device sans mapping direct vers le profil CDA."
// Notes / texte libre : mappage vers le texte narratif CDA
* group[=].element[+].code = #FRLMProcedure.note
* group[=].element[=].target.code = #Procedure.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-document"

/* Élément racine */
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = "FRProcedureDocument"
* group[=].element[=].target.equivalence = #equivalent
/* Code de l'acte */
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #equivalent
/* Statut */
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #Procedure.status
* group[=].element[=].target.equivalence = #equivalent
/* Date de l'acte */
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.equivalence = #equivalent
/* Priorité */
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #Procedure.extension:priority
* group[=].element[=].target.equivalence = #equivalent
/* Localisation anatomique */
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #Procedure.bodySite.TargetSiteCode
* group[=].element[=].target.equivalence = #equivalent
/* Voie d'abord */
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #Procedure.bodySite.ApproachSiteCode
* group[=].element[=].target.equivalence = #equivalent
/* Difficulté */
* group[=].element[+].code = #FRLMProcedure.difficulty
* group[=].element[=].target.code = #Procedure.extension:difficulte
* group[=].element[=].target.equivalence = #equivalent
/* Motif de l'acte */
* group[=].element[+].code = #FRLMProcedure.reason[x]
* group[=].element[=].target.code = #Procedure.reasonCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMProcedure.reason[x]
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.equivalence = #equivalent
/* Résultat immédiat */
* group[=].element[+].code = #FRLMProcedure.outcome
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.equivalence = #equivalent
/* Complication */
* group[=].element[+].code = #FRLMProcedure.complication
* group[=].element[=].target.code = #Procedure.complication
* group[=].element[=].target.equivalence = #equivalent
/* Dispositif médical utilisé */
* group[=].element[+].code = #FRLMProcedure.deviceUsed
* group[=].element[=].target.code = #Procedure.usedReference
* group[=].element[=].target.equivalence = #equivalent
/* Consultations associées */
* group[=].element[+].code = #FRLMProcedure.focalDevice
* group[=].element[=].target.code = #Procedure.focalDevice.manipulated.device
* group[=].element[=].target.equivalence = #equivalent
/* Note */
* group[=].element[+].code = #FRLMProcedure.note
* group[=].element[=].target.code = #Procedure.note
* group[=].element[=].target.equivalence = #equivalent
