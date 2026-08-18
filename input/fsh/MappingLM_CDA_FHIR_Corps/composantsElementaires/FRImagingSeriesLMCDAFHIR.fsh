Instance: FRImagingSeriesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSeries → FRCDADICOMSerieImagerie / FRLMSeries → FRImagingStudyDocument"
Description: "Mapping des éléments du modèle métier FRLMSeries vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Série d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-series"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-serie-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMSeries
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de la série
* group[=].element[+].code = #FRLMSeries.seriesUid
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.id
* group[=].element[=].target.equivalence = #equivalent
// Numéro de la série
* group[=].element[+].code = #FRLMSeries.number
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour number."
// Modalité de la série
* group[=].element[+].code = #FRLMSeries.seriesModality
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.code.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMSeries.bodySite
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour bodySite."
// Spécimen associé
* group[=].element[+].code = #FRLMSeries.specimen
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMSerieImagerie pour specimen."
// Nombre d'instances
* group[=].element[+].code = #FRLMSeries.numberOfInstances
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour numberOfInstances."
// Endpoint de la série
* group[=].element[+].code = #FRLMSeries.seriesEndpoint
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text
* group[=].element[=].target.equivalence = #relatedto
// Date de début de la série
* group[=].element[+].code = #FRLMSeries.started
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRLMSeries.instanceSOP
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Identifiant
* group[=].element[+].code = #FRLMSeries.instanceSOP.header.identifier
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.id
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Classe SOP
* group[=].element[+].code = #FRLMSeries.instanceSOP.sopClass
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.code
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Numéro d'instance
* group[=].element[+].code = #FRLMSeries.instanceSOP.instanceNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour instanceNumber."
// SOP instance - Nombre de frames
* group[=].element[+].code = #FRLMSeries.instanceSOP.numberOfFrames
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour numberOfFrames."
// Endpoint - Connection type
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.connectionType
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.equivalence = #relatedto
// Endpoint - Payload type
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.payloadType
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.mediaType
* group[=].element[=].target.equivalence = #relatedto
// Endpoint - Adresse
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.address
* group[=].element[=].target.code = #FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference
* group[=].element[=].target.equivalence = #relatedto

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-series"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document"
// Élément racine
* group[=].element[+].code = #FRLMSeries
* group[=].element[=].target.code = #FRImagingStudyDocument
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le modèle FRLMSeries alimente principalement ImagingStudy.series."
// identifiant de la série
* group[=].element[+].code = #FRLMSeries.seriesUid
* group[=].element[=].target.code = #FRImagingStudyDocument.series.uid
* group[=].element[=].target.equivalence = #relatedto
// Numéro de la série
* group[=].element[+].code = #FRLMSeries.number
* group[=].element[=].target.code = #FRImagingStudyDocument.series.number
* group[=].element[=].target.equivalence = #equivalent
// Modalité de la série
* group[=].element[+].code = #FRLMSeries.seriesModality
* group[=].element[=].target.code = #FRImagingStudyDocument.series.modality
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMSeries.bodySite
* group[=].element[=].target.code = #FRImagingStudyDocument.series.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Spécimen associé
* group[=].element[+].code = #FRLMSeries.specimen
* group[=].element[=].target.code = #FRImagingStudyDocument.series.specimen
* group[=].element[=].target.equivalence = #equivalent
// Nombre d'instances
* group[=].element[+].code = #FRLMSeries.numberOfInstances
* group[=].element[=].target.code = #FRImagingStudyDocument.series.numberOfInstances
* group[=].element[=].target.equivalence = #equivalent
// Endpoint de la série
* group[=].element[+].code = #FRLMSeries.seriesEndpoint
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint
* group[=].element[=].target.equivalence = #equivalent
// Date de la série d'actes
* group[=].element[+].code = #FRLMSeries.started
* group[=].element[=].target.code = #FRImagingStudyDocument.series.started
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRLMSeries.instanceSOP
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Identifiant
* group[=].element[+].code = #FRLMSeries.instanceSOP.header.identifier
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance.uid
* group[=].element[=].target.equivalence = #relatedto
// SOP instance - Classe SOP
* group[=].element[+].code = #FRLMSeries.instanceSOP.sopClass
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance.sopClass
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Numéro d'instance
* group[=].element[+].code = #FRLMSeries.instanceSOP.instanceNumber
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance.number
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Nombre de frames
* group[=].element[+].code = #FRLMSeries.instanceSOP.numberOfFrames
* group[=].element[=].target.code = #FRImagingStudyDocument.series.instance.extension:number-of-frames
* group[=].element[=].target.equivalence = #equivalent
// Endpoint - Connection type
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.connectionType
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.connectionType
* group[=].element[=].target.equivalence = #equivalent
// Endpoint - Payload type
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.payloadType
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.payloadType
* group[=].element[=].target.equivalence = #equivalent
// Endpoint - Adresse
* group[=].element[+].code = #FRLMSeries.seriesEndpoint.address
* group[=].element[=].target.code = #FRImagingStudyDocument.series.endpoint.address
* group[=].element[=].target.equivalence = #equivalent
