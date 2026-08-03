Instance: FRImagingProcedureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProcedure → FRCDADICOMTechniqueImagerie / FRLMProcedure → FRProcedureImagingDocument"
Description: "Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument."
* title = "Mapping Métier/CDA/FHIR : \"Technique imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMProcedure.header.identifier
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'acte
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Période de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Date de début de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDateDateTime
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent
// Date de fin de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDatePeriod
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent
// Priorité
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// précision topographique de la localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Voie d'abord
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.approachSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRLMProcedure.header.participant[x]
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.participant
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document"
// Élément racine
* group[=].element[+].code = #FRLMProcedure
* group[=].element[=].target.code = #FRProcedureImagingDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée
* group[=].element[+].code = #FRLMProcedure.header.identifier
* group[=].element[=].target.code = #FRProcedureImagingDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Code de l'acte
* group[=].element[+].code = #FRLMProcedure.code
* group[=].element[=].target.code = #FRProcedureImagingDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'acte
* group[=].element[+].code = #FRLMProcedure.header.status
* group[=].element[=].target.code = #FRProcedureImagingDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Période de l'acte
* group[=].element[+].code = #FRLMProcedure.procedureDate[x]
* group[=].element[=].target.code = #FRProcedureImagingDocument.performed[x]
* group[=].element[=].target.equivalence = #equivalent
// Priorité
* group[=].element[+].code = #FRLMProcedure.priority
* group[=].element[=].target.code = #FRProcedureImagingDocument.extension:priority
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMProcedure.bodySite
* group[=].element[=].target.code = #FRProcedureImagingDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Voie d'abord
* group[=].element[+].code = #FRLMProcedure.approachSiteCode
* group[=].element[=].target.code = #FRProcedureImagingDocument.extension:approachBodySite
* group[=].element[=].target.equivalence = #equivalent
// Difficulté
* group[=].element[+].code = #FRLMProcedure.difficulty
* group[=].element[=].target.code = #FRProcedureImagingDocument.extension:difficulte
* group[=].element[=].target.equivalence = #equivalent
// Motif de l'acte
* group[=].element[+].code = #FRLMProcedure.reason[x]
* group[=].element[=].target.code = #FRProcedureImagingDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Résultat immédiat
* group[=].element[+].code = #FRLMProcedure.outcome
* group[=].element[=].target.code = #FRProcedureImagingDocument.outcome
* group[=].element[=].target.equivalence = #equivalent
// Complication
* group[=].element[+].code = #FRLMProcedure.complication
* group[=].element[=].target.code = #FRProcedureImagingDocument.complication
* group[=].element[=].target.equivalence = #equivalent
// Dispositif médical utilisé
* group[=].element[+].code = #FRLMProcedure.deviceUsed
* group[=].element[=].target.code = #FRProcedureImagingDocument.usedReference
* group[=].element[=].target.equivalence = #equivalent
// Dispositif focal
* group[=].element[+].code = #FRLMProcedure.focalDevice
* group[=].element[=].target.code = #FRProcedureImagingDocument.focalDevice.manipulated
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMProcedure.note
* group[=].element[=].target.code = #FRProcedureImagingDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Exécutant
* group[=].element[+].code = #FRLMProcedure.header.performer[x]
* group[=].element[=].target.code = #FRProcedureImagingDocument.performer:Intervenant.actor
* group[=].element[=].target.equivalence = #equivalent
// Auteur
* group[=].element[+].code = #FRLMProcedure.header.author[x]
* group[=].element[=].target.code = #FRProcedureImagingDocument.recorder
* group[=].element[=].target.equivalence = #equivalent
// Informateur
* group[=].element[+].code = #FRLMProcedure.header.informant
* group[=].element[=].target.code = #FRProcedureImagingDocument.asserter
* group[=].element[=].target.equivalence = #equivalent
// Participant
* group[=].element[+].code = #FRLMProcedure.header.participant[x]
* group[=].element[=].target.code = #FRProcedureImagingDocument.extension:participant
* group[=].element[=].target.equivalence = #equivalent