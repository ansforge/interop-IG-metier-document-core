Instance: FRImagingStudyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImagingStudy → FRCDADICOMExamenImagerie / FRLMImagingStudy → FRImagingStudyDocument"
Description: "Mapping des éléments du modèle métier FRLMImagingStudy vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Examen d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-examen-imagerie"

// Élément racine
* group[=].element[+].code = #FRLMImagingStudy
* group[=].element[=].target.code = #Act
* group[=].element[=].target.display = "FRCDADICOMExamenImagerie"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImagingStudy.header.identifier
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Modalité de l'examen
* group[=].element[+].code = #FRLMImagingStudy.modality
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique de l'examen
* group[=].element[+].code = #FRLMImagingStudy.bodySite
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// précision topographique de la localisation anatomique
* group[=].element[+].code = #FRLMImagingStudy.bodySite:FRLMBodyStructure.locationQualifier
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Rencontre associée à l'examen
* group[=].element[+].code = #FRLMImagingStudy.encounter
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMExamenImagerie pour encounter."
// Date de l'examen
* group[=].element[+].code = #FRLMImagingStudy.started
* group[=].element[=].target.code = #FRCDADICOMTechniqueImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// demande d'examen
* group[=].element[+].code = #FRLMImagingStudy.basedOn
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour basedOn mais plutôt dans un autre contexte (demande d'imagerie)."
// Nombre de séries
* group[=].element[+].code = #FRLMImagingStudy.numberOfSeries
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMTechniqueImagerie pour numberOfSeries."
// Nombre d'instances
* group[=].element[+].code = #FRLMImagingStudy.numberOfInstances
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMTechniqueImagerie pour numberOfInstances."
// Organisation responsable de l'examen
* group[=].element[+].code = #FRLMImagingStudy.studyCustodian
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour organisation."
// Endpoint
* group[=].element[+].code = #FRLMImagingStudy.studyEndpoint
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour studyEndpoint. Les détails de l'endpoint sont portés par la ressource Endpoint cible dans FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text. ."
// series
* group[=].element[+].code = #FRLMImagingStudy.series
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour series. Les détails de la série sont portés par la ressource FRCDADICOMExamenImagerie.entryRelationship.act:FRCDADICOMSerieImagerie."

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document"
// Élément racine
* group[=].element[+].code = #FRLMImagingStudy
* group[=].element[=].target.code = #ImagingStudy
* group[=].element[=].target.display = "FRImagingStudyDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMImagingStudy.header.identifier
* group[=].element[=].target.code = #ImagingStudy.identifier
* group[=].element[=].target.equivalence = #equivalent
// Modalité de l'examen
* group[=].element[+].code = #FRLMImagingStudy.modality
* group[=].element[=].target.code = #ImagingStudy.modality
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique de l'examen
* group[=].element[+].code = #FRLMImagingStudy.bodySite
* group[=].element[=].target.code = #ImagingStudy.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Rencontre associée à l'examen
* group[=].element[+].code = #FRLMImagingStudy.encounter
* group[=].element[=].target.code = #ImagingStudy.encounter
* group[=].element[=].target.equivalence = #equivalent
// Date de l'examen
* group[=].element[+].code = #FRLMImagingStudy.started
* group[=].element[=].target.code = #ImagingStudy.started
* group[=].element[=].target.equivalence = #equivalent
// demande d'examen
* group[=].element[+].code = #FRLMImagingStudy.basedOn
* group[=].element[=].target.code = #ImagingStudy.basedOn
* group[=].element[=].target.equivalence = #equivalent
// Nombre de séries
* group[=].element[+].code = #FRLMImagingStudy.numberOfSeries
* group[=].element[=].target.code = #ImagingStudy.numberOfSeries
* group[=].element[=].target.equivalence = #equivalent
// Nombre d'instances
* group[=].element[+].code = #FRLMImagingStudy.numberOfInstances
* group[=].element[=].target.code = #ImagingStudy.numberOfInstances
* group[=].element[=].target.equivalence = #equivalent
// Organisation responsable de l'examen
* group[=].element[+].code = #FRLMImagingStudy.studyCustodian
* group[=].element[=].target.code = #ImagingStudy.series.performer.actor:Organization
* group[=].element[=].target.equivalence = #equivalent
// Endpoint
* group[=].element[+].code = #FRLMImagingStudy.studyEndpoint
* group[=].element[=].target.code = #ImagingStudy.endpoint
* group[=].element[=].target.equivalence = #equivalent
// series
* group[=].element[+].code = #FRLMImagingStudy.series   
* group[=].element[=].target.code = #ImagingStudy.series
* group[=].element[=].target.equivalence = #equivalent