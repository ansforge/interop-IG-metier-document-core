Instance: FRImagingProcedureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProcedure → FRCDADICOMTechniqueImagerie / FRLMProcedure → FRProcedureImagingDocument"
Description: "Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument."
* title = "Mapping Métier/CDA/FHIR : \"Technique imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-technique-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = "FRCDADICOMTechniqueImagerie"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMProcedure.header.identifier
* group[=].element[=].target.code = #Procedure.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'acte
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #Procedure.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #Procedure.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Date de début de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDateDateTime
* group[=].element[=].target.code = #Procedure.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent
// Date de fin de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDatePeriod
* group[=].element[=].target.code = #Procedure.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent
// Priorité
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #Procedure.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #Procedure.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// précision topographique de la localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier
* group[=].element[=].target.code = #Procedure.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Voie d'abord
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #Procedure.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRLMProcedure.header.participant[x]
* group[=].element[=].target.code = #Procedure.participant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-imaging-document"
// Élément racine
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #Procedure
* group[=].element[=].target.display = "FRProcedureImagingDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMProcedure.header.identifier
* group[=].element[=].target.code = #Procedure.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'acte
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #Procedure.status
* group[=].element[=].target.equivalence = #equivalent
// Période de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #Procedure.performed[x]
* group[=].element[=].target.equivalence = #equivalent
// Priorité
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #Procedure.extension:priority
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #Procedure.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Voie d'abord
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #Procedure.extension:approachBodySite
* group[=].element[=].target.equivalence = #equivalent
// Difficulté
* group[=].element[+].code = #FRLMProcedure.difficulty
* group[=].element[=].target.code = #Procedure.extension:difficulte
* group[=].element[=].target.equivalence = #equivalent
// Motif de l'acte
* group[=].element[+].code = #FRLMProcedure.reason[x]
* group[=].element[=].target.code = #Procedure.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Résultat immédiat
* group[=].element[+].code = #FRLMProcedure.outcome
* group[=].element[=].target.code = #Procedure.outcome
* group[=].element[=].target.equivalence = #equivalent
// Complication
* group[=].element[+].code = #FRLMProcedure.complication
* group[=].element[=].target.code = #Procedure.complication
* group[=].element[=].target.equivalence = #equivalent
// Dispositif médical utilisé
* group[=].element[+].code = #FRLMProcedure.deviceUsed
* group[=].element[=].target.code = #Procedure.usedReference
* group[=].element[=].target.equivalence = #equivalent
// Dispositif focal
* group[=].element[+].code = #FRLMProcedure.focalDevice
* group[=].element[=].target.code = #Procedure.focalDevice.manipulated
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMProcedure.note
* group[=].element[=].target.code = #Procedure.note
* group[=].element[=].target.equivalence = #equivalent
// Exécutant
* group[=].element[+].code = #FRLMProcedure.header.performer[x]
* group[=].element[=].target.code = #Procedure.performer:Intervenant.actor
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMProcedure.header.author[x]
* group[=].element[=].target.code = #Procedure.recorder
* group[=].element[=].target.equivalence = #equivalent
// Informateur
* group[=].element[+].code = #FRLMProcedure.header.informant
* group[=].element[=].target.code = #Procedure.asserter
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRLMProcedure.header.participant[x]
* group[=].element[=].target.code = #Procedure.extension:participant
* group[=].element[=].target.equivalence = #equivalent